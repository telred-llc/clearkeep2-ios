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

typealias ConversationModel = GetUserQuery.Data.GetUser.Conversation.Item

final class ConversationViewModel: ObservableObject {
    
    @Published var conversations = [ConversationModel]()
    @Published var showDetail = false
    var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    var discardConvLink: Cancellable?
    var creatingConversationLink: CreateConvoLinkMutation.Data.CreateConvoLink?
    var newConvModel: ConversationModel?
    init() {
        self.conversations = self.meData?.conversations?.items?.compactMap({$0}) ?? []
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
//                        self.conversations.sort { (lItem, rItem) -> Bool in
//                            guard let lTime = lItem.createdAt?.toDate(), let rTime = rItem.createdAt?.toDate() else {
//                                return false
//                            }
//                            return lTime > rTime
//                        }
                        // If convLink was created by this user then show chat detail screen
//                        if let creatingConversationLink = self.creatingConversationLink,
//                            creatingConversationLink.convoLinkUserId == newConvoLink.convoLinkUserId {
//                            
//                            
//                            
//                        }
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
}
