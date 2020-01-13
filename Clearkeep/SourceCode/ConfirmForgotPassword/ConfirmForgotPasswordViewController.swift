//
//  ConfirmForgotPasswordViewController.swift
//  Clearkeep
//
//  Created by Dat Nguyen on 1/18/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSMobileClient
class ConfirmForgotPasswordViewController: BaseViewController {

    @IBOutlet weak var codeInputTextField: UITextField!
    @IBOutlet weak var newPasswordInputTextFiled: UITextField!
    @IBOutlet weak var resendCodeButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    var username: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewController()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNaivigation(title: "Reset Password")
    }
    
    private func setupViewController() {
        self.submitButton.layer.cornerRadius = 4
        self.submitButton.backgroundColor = UIColor.blue    
        self.submitButton.tintColor = .white
        
        resendCodeButton.addTarget(self, action: #selector(resendCode), for: .touchUpInside)
        submitButton.addTarget(self, action: #selector(verifyCode), for: .touchUpInside)
    }

    @objc func resendCode() {
        showProgressHub()
        AWSMobileClient.default().forgotPassword(username: self.username) { (result, error) in
            self.hideProgressHub()
            if let error = error {
                self.showErrorMessage(error: error)
            } else if let result = result {
                switch result.forgotPasswordState {
                case .done:
                    break
                case .confirmationCodeSent:
                    self.showAlert(title: "Successed", msg: "A verification code has been sent via your email", {
                    })
                }
            }
        }
    }

    @objc func verifyCode() {
        if (self.codeInputTextField.text ?? "").isEmpty {
            self.showAlert(title: "", msg: "Please enter code")
            return
        }
        
        if (self.newPasswordInputTextFiled.text ?? "").isEmpty {
            self.showAlert(title: "", msg: "Please enter new password")
            return
        }
        showProgressHub()
        AWSMobileClient.default().confirmForgotPassword(username: self.username, newPassword: (self.newPasswordInputTextFiled.text ?? ""), confirmationCode: (self.codeInputTextField.text ?? "")) { (result, error) in
            self.hideProgressHub()
            if let error = error {
                self.showErrorMessage(error: error)
            } else if let result = result {
                switch result.forgotPasswordState {
                case .done:
                    Switcher.updateRootVC(logined: false)
                case .confirmationCodeSent:
                    break
                }
            }
        }
    }
}
