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
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    func login() {
        AWSMobileClient.default().signIn(username: email, password: password) { (loginResult, error) in
            if let error = error {
                // show error
                return
            } else if let response = loginResult {
                switch response.signInState {
                case .signedIn:
                    break
                default:
                    break
                }
            }
        }
    }
}
