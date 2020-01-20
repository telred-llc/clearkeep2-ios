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
    var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    var discardConvLink: Cancellable?
    var creatingConversationLink: CreateConvoLinkMutation.Data.CreateConvoLink?
    
    
    init() {
        self.conversations = self.meData?.conversations?.items as! [ConversationModel]
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
                        self.conversations = self.meData?.conversations?.items as! [ConversationModel]
                        // If convLink was created by this user then show chat detail screen
                        if let creatingConversationLink = self.creatingConversationLink,
                            creatingConversationLink.convoLinkUserId == newConvoLink.convoLinkUserId {
                            //                            self?.showDetail(conversation: newConvLink)
                        }
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
}
