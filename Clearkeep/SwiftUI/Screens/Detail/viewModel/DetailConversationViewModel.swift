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
    private var nextToken: String?
    private lazy var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    private lazy var dateFormatter = DateFormatter.init()
    private let numberOfItemsPerPage: Int = 20
    private var discardMessages: Cancellable?
    
    @Published var conversationData: GetConvoQuery.Data.GetConvo?
    @Published var showContact = false
    var idConversation: GraphQLID = ""
    
    func refreshData(_ animated: Bool = true) {
        if idConversation.isEmpty {
            MessageUtils.showMess(type: .failed, string: "Can't get message")
        } else {
            firstly { () -> PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> in
                if animated {
                    Utils.showProgressHub()
                }
                return self.fetchConversation(conversationId: self.idConversation )
            }.done({ (conversation) in
                self.conversationData = conversation
                let items = conversation?.messages?.items?.compactMap({ return $0 }) ?? []
                self.conversationData?.messages?.items = items
            }).ensure {
                Utils.hideProgressHub()
            }.catch { (error) in
                
            }
        }
    }
    
    func clearData() {
        self.conversationData?.messages?.items?.removeAll()
    }
    
    func loadMore() {
        let copyData = self.conversationData?.messages?.items ?? []
        self.conversationData?.messages?.items?.append(contentsOf: copyData)
    }
    
    func fetchConversation(conversationId: String) -> PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> {
        return PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> { (resolver) in
            
            let query = GetConvoQuery.init(id: conversationId)
            Utils.appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.returnCacheDataAndFetch, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    resolver.fulfill(result?.data?.getConvo)
                }
            })
        }
    }
    
    func sendMessage(content: String) {
        
        guard content.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).count > 0, !idConversation.isEmpty else {
            return
        }
        
        
        let date = Date.init()
        self.dateFormatter.dateFormat = Constant.globalDateFormat
        let createdAt = self.dateFormatter.string(from: date)
        let id = createdAt + "_" + UUID().uuidString
     
//        let conv = GetConvoQuery.Data.GetConvo.Message.Item.Conversation(id: <#T##GraphQLID#>, name: <#T##String#>, members: <#T##[String]#>)
//        let tempMessage = GetConvoQuery.Data.GetConvo.Message.Item(id: id, author: nil, authorId: meData?.id, content: content, conversation: nil, messageConversationId: idConversation, createdAt: createdAt, updatedAt: nil)
        let createMessageMutaion = CreateMessageMutation.init(input: CreateMessageInput.init(id: id, authorId: self.meData?.id, content: content, messageConversationId: idConversation, createdAt: createdAt, updatedAt: nil))
        Utils.appSyncClient?.perform(mutation: createMessageMutaion, resultHandler: { (result, error) in
            if let result = result {
                if (result.data?.createMessage?.snapshot) != nil {
                    self.objectWillChange.send()
                    print("Send message: DONE")
                }
            } else {
                MessageUtils.showMess(type: .failed, string: "Can't send message! Please try again")
            }
        })
        
    }
    
    func subscribeNewMessage(conversationId: String) {
        if conversationId.count == 0 {
            return
        }
        do {
            discardMessages = try Utils.appSyncClient?.subscribe(subscription: OnCreateMessageSubscription.init(messageConversationId: conversationId), queue: DispatchQueue.main, resultHandler: { (result, transaction, error) in
                if let result = result {
                    if let snapshot = result.data?.onCreateMessage?.snapshot {
                        self.conversationData?.messages?.items?.append(GetConvoQuery.Data.GetConvo.Message.Item.init(snapshot: snapshot))
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
}
