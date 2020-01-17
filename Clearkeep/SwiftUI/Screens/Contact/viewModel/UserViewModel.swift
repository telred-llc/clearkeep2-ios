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
    
    func getAllUser(animated: Bool = true) {
        DispatchQueue.main.async {
            self.discardAllUsers?.cancel()
            // fetch users
            self.discardAllUsers?.cancel()
            firstly { () -> PromiseKit.Promise<[ListUsersQuery.Data.ListUser.Item]?>  in
                if animated {
                    Utils.showProgressHub()
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
}

