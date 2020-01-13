//
//  ForgotPasswordViewControlller.swift
//  Clearkeep
//
//  Created by Dat Nguyen on 1/18/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSMobileClient
class ForgotPasswordViewControlller: BaseViewController {

    @IBOutlet weak var usernameInputTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNaivigation(title: "Forgot Password")
    }
    
    func setupViewController() {
        submitButton.setTitle("Submit", for: .normal)
        submitButton.addTarget(self, action: #selector(forgotPassword), for: .touchUpInside)
    }
    
    @objc func forgotPassword() {
        if (usernameInputTextField.text ?? "").isEmpty {
            self.showAlert(title: "", msg: "Please enter your username")
            return
        }
        self.showProgressHub()
        AWSMobileClient.default().forgotPassword(username: usernameInputTextField.text ?? "") { (result, error) in
            self.hideProgressHub()
            if let error = error {
                self.showErrorMessage(error: error)
            } else {
                switch result?.forgotPasswordState {
                case .done?:
                    break
                case .confirmationCodeSent?:
                    DispatchQueue.main.async {
                        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ConfirmForgotPasswordViewController") as? ConfirmForgotPasswordViewController else {
                            return
                        }

                        vc.username = self.usernameInputTextField.text ?? ""
                        self.navigationController?.pushViewController(vc, animated: true)
                    }
                    break
                default:
                    break
                }
            }
        }
    }
}
