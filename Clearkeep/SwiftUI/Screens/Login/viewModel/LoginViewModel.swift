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

// MARK: - ViewModel
public class LoginViewModel: ObservableObject {
    
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isShowConfirm = false
    @Published var type: ConfirmationScreen.ConfirmationType = .signin
    
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
        Utils.showProgressHub()
        AWSMobileClient.default().signIn(username: username, password: password) { [weak self] (response, error) in
            Utils.hideProgressHub()
            guard let `self` = self else {
                return
            }
            if let error = error {
                if let awsClientError = error as? AWSMobileClientError {
                    switch awsClientError {
                    case .userNotConfirmed(message: _):
                        self.showConfirmationVC(type: .signup)
                    default:
                        MessageUtils.showErrorMessage(error: error)
                    }
                } else {
                    MessageUtils.showErrorMessage(error: error)
                }
            } else if let response = response {
                switch (response.signInState) {
                case .signedIn:
                    self.checkIfUserExists(username: self.username)
                case .smsMFA:
                    MessageUtils.showMess(type: .success, string: "SMS message sent to \(response.codeDetails!.destination!)")
                    self.showConfirmationVC(type: .signup)
                default:
                    MessageUtils.showMess(type: .failed, string: "\(response.signInState.rawValue)")
                    
                }
            }
        }
    }
    
    func checkIfUserExists(username: String) {
        DispatchQueue.main.async {
            Utils.showProgressHub()
            Utils.appSyncClient?.fetch(query: GetUserQuery.init(id: username), cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
                Utils.hideProgressHub()
                if let error = error {
                    MessageUtils.showErrorMessage(error: error)
                } else if result?.data?.getUser == nil {
                    self.createUser(username: username)
                } else {
                    Session.shared.meData = result?.data?.getUser
                    Session.shared.lastCredential = (username, self.password)
                    Switcher.updateRootVC(logined: true)
                }
            })
        }
        
    }
    
    func createUser(username: String) {
        DispatchQueue.main.async {
            Utils.showProgressHub()
            let createUserMutation = CreateUserMutation.init(input: CreateUserInput.init(username: username))
            Utils.appSyncClient?.perform(mutation: createUserMutation, resultHandler: { (result, error) in
                Utils.hideProgressHub()
                if let error = error {
                    MessageUtils.showErrorMessage(error: error)
                } else if let result = result {
                    if let jsonObject = result.data?.createUser?.jsonObject {
                        do {
                            Session.shared.meData = try GetUserQuery.Data.GetUser.init(jsonObject: jsonObject)
                            Session.shared.lastCredential = (username, self.password)
                            Switcher.updateRootVC(logined: true)
                        } catch {
                            print("Cannot parse graphql object: \(error)")
                        }
                    }
                }
            })
        }
        
    }
    
    private func showConfirmationVC(type: ConfirmationScreen.ConfirmationType) {
        DispatchQueue.main.async {
            self.isShowConfirm = true
            self.type = type
            self.objectWillChange.send()
        }
        
    }
}
