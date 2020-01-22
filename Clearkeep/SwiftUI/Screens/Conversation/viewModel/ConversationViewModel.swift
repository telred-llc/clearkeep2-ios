//
//  RoomViewModel.swift
//  CKAppSycn
//
//  Created by Vu Vuong on 1/9/20.
//  Copyright © 2020 klinh. All rights reserved.
//

import Foundation
import SwiftUI
import AWSMobileClient
import AWSAppSync
import PromiseKit

typealias ConversationModel = GetUserQuery.Data.GetUser.Conversation.Item

final class ConversationViewModel: ObservableObject {
    
    @Published var conversations = [ConversationModel]()
    @Published var showDetail = false
    @Published var showUsers = false
    @Published var modelDetail: ConversationModel?
    var discardAllUsers: Cancellable?
    var roomName = ""
    var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    var discardConvLink: Cancellable?
    var creatingConversationLink: CreateConvoLinkMutation.Data.CreateConvoLink?
    var newConvModel: ConversationModel?
    typealias CreateConvoResult = (CreateConvoMutation.Data.CreateConvo, CreateConvoLinkMutation.Data.CreateConvoLink?)
    
    init() {
        self.conversations = self.meData?.conversations?.items?.compactMap({$0}) ?? []
        self.conversations.sort { (lItem, rItem) -> Bool in
            guard let lTime = lItem.createdAt?.toDate(), let rTime = rItem.createdAt?.toDate() else {
                return false
            }
            return lTime > rTime
        }
    }
    
    func subscribeNewConvLink(userId: String) {
        discardConvLink?.cancel()
        do {
            discardConvLink = try Utils.appSyncClient?.subscribe(subscription: OnCreateConvoLinkSubscription.init(convoLinkUserId: userId), resultHandler: { [weak self] (result, transaction, error) in
                if let result = result,
                    let newConvoLink = result.data?.onCreateConvoLink {
                    if self?.meData?.id == newConvoLink.convoLinkUserId {
                        guard let `self` = self else {
                            return
                        }
                        let newConvLink = GetUserQuery.Data.GetUser.Conversation.Item.init(snapshot: newConvoLink.snapshot)
                        self.meData?.conversations?.items?.append(newConvLink)
                        self.conversations = self.meData?.conversations?.items?.compactMap({$0}) ?? []
                        self.conversations.sort { (lItem, rItem) -> Bool in
                            guard let lTime = lItem.createdAt?.toDate(), let rTime = rItem.createdAt?.toDate() else {
                                return false
                            }
                            return lTime > rTime
                        }
                        
                        if let model = self.meData?.conversations?.items?.first(where: { $0?.id == newConvLink.id }) {
                            if let modelUnwrap = model {
                                self.newConvModel = model
                                NotificationCenter.default.post(name: NSNotification.Name.init("DidReceiveNewCoversation"), object: nil, userInfo: ["newConversation": modelUnwrap])
                            }
                        }
                        
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
        func createConversationAndLink(name: String, members: [String]) {
            firstly { () -> PromiseKit.Promise<CreateConvoMutation.Data.CreateConvo> in
                Utils.showProgressHub()
                return createConversation(name: name, members: members)
            }.then({ (createdConv) -> PromiseKit.Promise<[CreateConvoResult]> in
                return self.createConversationLinks(conv: createdConv, members: members)
            }).done({ (results) in
                let result = results.first?.1
                if let model = self.meData?.conversations?.items?.first(where: { $0?.id == result?.id }) {
                    self.modelDetail = model
                    self.showDetail = true
                } else {
                    self.creatingConversationLink = result
                }
                //            completion?(true, results.first?.1)
            }).ensure {
                Utils.hideProgressHub()
            }.catch { (error) in
                print(error)
                //            completion?(false, nil)
            }
        }
    
        func createConversation(name: String, members: [String]) -> PromiseKit.Promise<CreateConvoMutation.Data.CreateConvo> {
            return PromiseKit.Promise<CreateConvoMutation.Data.CreateConvo> { (resolver) in
                Utils.appSyncClient?.perform(mutation: CreateConvoMutation.init(input: CreateConversationInput.init(name: name, members: members)), queue: DispatchQueue.main, resultHandler: { (result, error) in
                    if let error = error {
                        resolver.reject(error)
                    } else {
                        if let createdConvo = result?.data?.createConvo {
                            resolver.fulfill(createdConvo)
                        } else {
                            resolver.reject(CQLError.unknownError)
                        }
                    }
                })
            }
        }
    
        func createConversationLinks(conv: CreateConvoMutation.Data.CreateConvo, members: [String]) -> PromiseKit.Promise<[CreateConvoResult]> {
            var thenables: [PromiseKit.Promise<CreateConvoResult>] = []
    
            for member in members {
                let result = createConversationLink(conv: conv, userId: member)
                thenables.append(result)
            }
    
            return when(fulfilled: thenables)
        }
    
        func createConversationLink(conv: CreateConvoMutation.Data.CreateConvo, userId: String) -> PromiseKit.Promise<CreateConvoResult> {
            return PromiseKit.Promise<CreateConvoResult> { (resolver) in
                let id = UUID().uuidString
                let createdAt = "\(Int64(Date.init().timeIntervalSince1970 * 1000))"
                Utils.appSyncClient?.perform(mutation: CreateConvoLinkMutation.init(input: CreateConvoLinkInput.init(id: id, convoLinkUserId: userId, convoLinkConversationId: conv.id, createdAt: createdAt, updatedAt: nil)), queue: DispatchQueue.main, resultHandler: { (result, error) in
                    if let error = error {
                        resolver.reject(error)
                    } else {
                        print(id)
                        resolver.fulfill((conv, result?.data?.createConvoLink))
                    }
                })
            }
        }
    
}

