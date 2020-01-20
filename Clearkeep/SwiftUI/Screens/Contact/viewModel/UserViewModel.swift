//
//  UserViewModel.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/16/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import PromiseKit
import SwiftUI
import AWSMobileClient
import AWSAppSync

typealias UserModel = ListUsersQuery.Data.ListUser.Item
class UserViewModel: ObservableObject {
    @Published var users: [UserModel] = []
    private var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    var discardAllUsers: Cancellable?
    typealias CreateConvoResult = (CreateConvoMutation.Data.CreateConvo, CreateConvoLinkMutation.Data.CreateConvoLink?)

    func getAllUser(animated: Bool = true) {
        DispatchQueue.main.async {
            self.discardAllUsers?.cancel()
            // fetch users
            self.discardAllUsers?.cancel()
            firstly { () -> PromiseKit.Promise<[ListUsersQuery.Data.ListUser.Item]?>  in
                if animated {
//                    Utils.showProgressHub()
                }
                return self.fetchAllUsers()
            }.done({ (users) in
                self.users = users?.filter({ $0.id != self.meData?.id }) ?? []
                print("Found:", self.users.count)

            }).ensure {
                Utils.hideProgressHub()
                
            }.catch { (error) in
                MessageUtils.showErrorMessage(error: error)
            }
        }
        
    }
    
    private func fetchAllUsers() -> PromiseKit.Promise<[ListUsersQuery.Data.ListUser.Item]?> {
        
        return PromiseKit.Promise<[ListUsersQuery.Data.ListUser.Item]?> { (resolver) in
            DispatchQueue.main.async {
                Utils.appSyncClient?.fetch(query: ListUsersQuery(), cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
                    if let error = error {
                        resolver.reject(error)
                        MessageUtils.showErrorMessage(error: error)
                    } else {
                        resolver.fulfill(result?.data?.listUsers?.items?.compactMap({ $0 }))
                    }
                })
            }
        }
    }
    
    private func fetchAllUserFromLocal() {
        Utils.appSyncClient?.fetch(query: ListUsersQuery.init(), cachePolicy: CachePolicy.returnCacheDataDontFetch, resultHandler: { (result, error) in
            if let error = error {
                print(error)
            } else if let result = result {
                self.users = result.data?.listUsers?.items?.compactMap({ $0 }).filter({ $0.id != self.meData?.id }) ?? []
            }
        })
    }
    
    func createConversationAndLink(name: String, ownerId: String, otherUserId: String, completion: ((Bool, CreateConvoLinkMutation.Data.CreateConvoLink?) -> Void)?) {
           firstly { () -> PromiseKit.Promise<CreateConvoMutation.Data.CreateConvo> in
               Utils.showProgressHub()
            return createConversation(name: name, members: [ownerId, otherUserId])
               }.then({ (createdConv) -> PromiseKit.Promise<CreateConvoResult> in
                   return self.createConversationLink(conv: createdConv, userId: otherUserId)
               }).then({ (result) -> PromiseKit.Promise<CreateConvoResult> in
                   return self.createConversationLink(conv: result.0, userId: ownerId)
               }).done({ (result) in
                   completion?(true, result.1)
               }).ensure {
                   Utils.hideProgressHub()
               }.catch { (error) in
                   print(error)
                   completion?(false, nil)
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

       func createConversationLink(conv: CreateConvoMutation.Data.CreateConvo, userId: String) -> PromiseKit.Promise<CreateConvoResult> {
           return PromiseKit.Promise<CreateConvoResult> { (resolver) in
               let id = UUID().uuidString
               let createdAt = "\(Int64(Date.init().timeIntervalSince1970 * 1000))"

            Utils.appSyncClient?.perform(mutation: CreateConvoLinkMutation.init(input: CreateConvoLinkInput.init(id: id, convoLinkUserId: userId, convoLinkConversationId: conv.id, createdAt: createdAt, updatedAt: nil)), queue: DispatchQueue.main, resultHandler: { (result, error) in
                   if let error = error {
                       resolver.reject(error)
                   } else {
                       resolver.fulfill((conv, result?.data?.createConvoLink))
                   }
               })
           }
       }
       
}

