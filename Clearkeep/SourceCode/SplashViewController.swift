//
//  SplashViewController.swift
//  ChatQL
//
//  Created by Pham Hoa on 1/16/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSMobileClient

class SplashViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        switch AWSMobileClient.default().currentUserState {
        case .signedIn:
            Switcher.updateRootVC(logined: true)
        default:
            // auto signin
            if let lastCredential = Session.shared.lastCredential,
                let username = lastCredential.0,
                let password = lastCredential.1 {
                
                self.showProgressHub()
                AWSMobileClient.default().signIn(username: username, password: password) { (result, error) in
                    self.hideProgressHub()
                    if let signInResult = result?.signInState, signInResult == .signedIn {
                        Switcher.updateRootVC(logined: true)
                    } else {
                        Switcher.updateRootVC(logined: false)
                    }
                }
            } else {
                Switcher.updateRootVC(logined: false)
            }
        }
    }
}
