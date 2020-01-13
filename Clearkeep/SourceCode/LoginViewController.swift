//
//  ViewController.swift
//  Clearkeep
//
//  Created by Pham Hoa on 1/10/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSCognitoIdentityProvider
import AWSMobileClient
import AWSAppSync

class LoginViewController: BaseViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupforgotPasswordButton()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    func setupforgotPasswordButton() {
        self.forgotPasswordButton.addTarget(self, action: #selector(moveToForgotPassword), for: .touchUpInside)
    }
    
    @objc func moveToForgotPassword() {
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ForgotPasswordViewControlller") as? ForgotPasswordViewControlller else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickedOnLoginButton(_ sender: Any) {
        self.view.endEditing(true)
        
        if !validate() {
            self.showAlert(title: "Missing information", msg: "Please enter a valid user name and password")
            return
        }

        let username = self.usernameTextField.text!
        self.showProgressHub()
        AWSMobileClient.default().signIn(username: username, password: self.passwordTextField.text!, completionHandler: { (signInResult, error) in
            self.hideProgressHub()
            if let error = error {
                self.showErrorMessage(error: error, {
                    if let awsClientError = error as? AWSMobileClientError {
                        switch awsClientError {
                        case .userNotConfirmed(message: _):
                            self.showConfirmationVC(type: .signup)
                        default:
                            break
                        }
                    }
                })
            } else if let signInResult = signInResult {
                switch (signInResult.signInState) {
                case .signedIn:
                    self.checkIfUserExists(username: username)
                case .smsMFA:
                    self.showAlert(title: nil, msg: "SMS message sent to \(signInResult.codeDetails!.destination!)", {
                        self.showConfirmationVC(type: .signin)
                    })
                default:
                    self.showAlert(title: nil, msg: "\(signInResult.signInState.rawValue)")
                }
            }
        })
    }

    func checkIfUserExists(username: String) {
        self.showProgressHub()
        appSyncClient?.fetch(query: GetUserQuery.init(id: username), cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
            self.hideProgressHub()
            if let error = error {
                self.showErrorMessage(error: error)
            } else if result?.data?.getUser == nil {
                self.createUser(username: username)
            } else {
                Session.shared.meData = result?.data?.getUser
                Switcher.updateRootVC(logined: true)
            }
        })
    }

    func createUser(username: String) {
        self.showProgressHub()
        let createUserMutation = CreateUserMutation.init(input: CreateUserInput.init(username: username))
        appSyncClient?.perform(mutation: createUserMutation, resultHandler: { (result, error) in
            self.hideProgressHub()
            if let error = error {
                self.showErrorMessage(error: error)
            } else if let result = result {
                if let jsonObject = result.data?.createUser?.jsonObject {
                    do {
                        Session.shared.meData = try GetUserQuery.Data.GetUser.init(jsonObject: jsonObject)
                        Switcher.updateRootVC(logined: true)
                    } catch {
                        print("Cannot parse graphql object: \(error)")
                    }
                }
            }
        })
    }
    
    func validate() -> Bool {
        if (usernameTextField.text ?? "").count == 0 {
            return false
        }
        
        if (passwordTextField.text ?? "").count == 0 {
            return false
        }

        return true
    }
    
    func showConfirmationVC(type: ConfirmationViewController.ConfirmationType) {
        DispatchQueue.main.async {
            let confirmVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ConfirmationViewController") as! ConfirmationViewController
            confirmVC.confirmType = type
            confirmVC.username = self.usernameTextField.text ?? ""
            self.navigationController?.pushViewController(confirmVC, animated: true)
        }
    }
}
