//
//  ChatConversationViewModel.swift
//  SwiftUI-Macos
//
//  Created by Vu Vuong on 1/8/20.
//  Copyright © 2020 Vu Vuong. All rights reserved.
//

import Foundation
import SwiftUI
import AWSAppSync
import AWSMobileClient
import PromiseKit

typealias MessageModel = GetConvoQuery.Data.GetConvo.Message.Item
class DetailConversationViewModel: ObservableObject {
    
    @Published var messages = [MessageModel]()
    @State var idConversation: GraphQLID?
    private var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    private var nextToken: String?
    private lazy var dateFormatter = DateFormatter.init()
    private let numberOfItemsPerPage: Int = 20
    private var conversationData: GetConvoQuery.Data.GetConvo?
    
    func refreshData(_ animated: Bool = true) {
        if idConversation?.isEmpty ?? false {
            MessageUtils.showMess(type: .failed, string: "Can't get message")
        } else {
            firstly { () -> PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> in
                if animated {
                    Utils.showProgressHub()
                }
                return self.fetchConversation(conversationId: self.idConversation ?? "")
            }.done({ (conversation) in
                _ = conversation?.messages?.items?.compactMap({ return $0 }) ?? []
                self.conversationData = conversation
                if let messages = conversation?.messages?.items as? [MessageModel] {
                    self.messages = messages
                }
            }).ensure {
                Utils.hideProgressHub()
            }.catch { (error) in
                
            }
        }
    }
    
    func clearData() {
        self.conversationData?.messages?.items?.removeAll()
    }
    
    func fetchConversation(conversationId: String) -> PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> {
        return PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> { (resolver) in
            let query = GetConvoQuery.init(id: conversationId)
            Utils.appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    resolver.fulfill(result?.data?.getConvo)
                }
            })
        }
    }
    
    func sendMessage(content: String) {
        
        guard content.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).count > 0, let idCov = self.idConversation else {
            return
        }
       
        
        let date = Date.init()
        self.dateFormatter.dateFormat = Constant.globalDateFormat
        let createdAt = self.dateFormatter.string(from: date)
        let id = createdAt + "_" + UUID().uuidString
        
        let tempMessage = GetConvoQuery.Data.GetConvo.Message.Item.init(id: id, authorId: self.meData?.id, content: content, messageConversationId: idCov, createdAt: createdAt, updatedAt: nil)
        self.conversationData?.messages?.items?.append(tempMessage)
        let createMessageMutaion = CreateMessageMutation.init(input: CreateMessageInput.init(id: id, authorId: self.meData?.id, content: content, messageConversationId: idCov, createdAt: createdAt, updatedAt: nil))
        Utils.appSyncClient?.perform(mutation: createMessageMutaion, resultHandler: { (result, error) in
            if let result = result {
                if let snapshot = result.data?.createMessage?.snapshot {
                    self.conversationData?.messages?.items?.append(GetConvoQuery.Data.GetConvo.Message.Item.init(snapshot: snapshot))
                    print("Send message: DONE")
                }
            } else {
                MessageUtils.showMess(type: .failed, string: "Can't send message! Please try again")
            }
        })
        
    }
    
}
