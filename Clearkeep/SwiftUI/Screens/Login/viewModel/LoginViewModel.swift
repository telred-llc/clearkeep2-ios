//
//  LoginViewModel.swift
//  CKAppSycn
//
//  Created by klinh on 1/8/20.
//  Copyright © 2020 klinh. All rights reserved.
//

import Foundation
import AWSCognitoIdentityProvider
import AWSMobileClient
import AWSAppSync
import SVProgressHUD

// MARK: - ViewModel
public class LoginViewModel: ObservableObject {
    
    @Published var username: String = ""
    @Published var password: String = ""
    let appSyncClient = Utils.getAppSync()
    
    func login() {
        guard validate() else {
            return
        }
        loginToServer()
    }
    
    //MARK: -Private function
    private func validate() -> Bool {
        guard !username.isEmpty, !password.isEmpty else {
            MessageUtils.showMess(type: .failed, string: "Please input all field")
            return false
        }
        return true
    }
    
    private func loginToServer() {
        SVProgressHUD.show()
        AWSMobileClient.default().signIn(username: username, password: password) { [weak self] (response, error) in
            SVProgressHUD.dismiss()
            guard let `self` = self else {
                return
            }
            if let error = error {
                MessageUtils.showErrorMessage(error: error)
            } else if let response = response {
                switch (response.signInState) {
                case .signedIn:
                    AWSMobileClient.default().getUserAttributes(completionHandler: { (attrs, error) in
                        if let attrs = attrs, let cognitoId = attrs["sub"] {
                            self.createUserIfNeeded(cognitoId: cognitoId)
                        } else {
                            MessageUtils.showMess(type: .failed, string: "Something went wrong!")
                        }
                    })
                case .smsMFA:
                    MessageUtils.showMess(type: .success, string: "SMS message sent to \(response.codeDetails!.destination!)")
                default:
                    MessageUtils.showMess(type: .failed, string: "\(response.signInState.rawValue)")
                    
                }
            }
        }
    }
    
    private func createUserIfNeeded(cognitoId: String) {
        SVProgressHUD.show()
        appSyncClient?.fetch(query: GetUserQuery.init(id: cognitoId), cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { [weak self] (result, error) in
            guard let `self` = self else {
                return
            }
            SVProgressHUD.dismiss()
            if let error = error {
                MessageUtils.showErrorMessage(error: error)
            } else if result?.data?.getUser == nil {
                self.createUser(cognitoId: cognitoId)
            } else {
                Session.shared.meData = result?.data?.getUser
                Switcher.updateRootVC(logined: true)
            }
        })
    }
    
    private func createUser(cognitoId: String) {
        SVProgressHUD.show()
        let createUserInput = CreateUserInput(id: cognitoId, username: username, createdAt: "", updatedAt: "")
        appSyncClient?.perform(mutation: CreateUserMutation.init(input: createUserInput), resultHandler: { (result, error) in
            
            SVProgressHUD.dismiss()
            if let error = error {
                
                MessageUtils.showErrorMessage(error: error)
            } else if let result = result {
                if let snapshot = result.data?.createUser?.snapshot {
                    Session.shared.meData = GetUserQuery.Data.GetUser.init(snapshot: snapshot)
                    Switcher.updateRootVC(logined: true)
                }
            }
        })
    }
}
