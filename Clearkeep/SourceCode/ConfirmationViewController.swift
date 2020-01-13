//
//  ConfirmationViewController.swift
//  Clearkeep
//
//  Created by Pham Hoa on 1/10/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSMobileClient

class ConfirmationViewController: BaseViewController {

    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var resendButton: UIButton!
    
    enum ConfirmationType {
        case signup
        case signin
    }
    
    var username: String!
    var confirmType: ConfirmationType = .signup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch confirmType {
        case .signup:
            resendButton.isHidden = false
        case .signin:
            resendButton.isHidden = true
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
        self.setupRightMenu(title: "Cancel")
    }
    
    override func buttonRightTapped() {
        super.buttonRightTapped()
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickedOnDoneButton(_ sender: Any) {
        self.view.endEditing(true)

        // validate
        if (codeTextField.text ?? "").count == 0 {
            self.showAlert(title: nil, msg: "Please enter verification code")
            return
        }
        
        switch confirmType {
        case .signup:
            self.confirmSignUp()
        case .signin:
            self.confirmSignIn()
        }
    }
    
    @IBAction func clickedOnResendButton(_ sender: Any) {
        self.view.endEditing(true)
        
        switch confirmType {
        case .signup:
            self.resendSignUpConfirmCode()
        default:
            break
        }
    }
    
    func resendSignUpConfirmCode() {
        self.showProgressHub()
        AWSMobileClient.default().resendSignUpCode(username: username, completionHandler: { (result, error) in
            
            self.hideProgressHub()
            
            if let signUpResult = result {
                self.showAlert(title: "Successed", msg: "A verification code has been sent via \(signUpResult.codeDeliveryDetails!.deliveryMedium) at \(signUpResult.codeDeliveryDetails!.destination!)")
            } else if let error = error {
                self.showErrorMessage(error: error)
            }
        })
    }
    
    func confirmSignUp() {
        self.showProgressHub()
        AWSMobileClient.default().confirmSignUp(username: username, confirmationCode: codeTextField.text!) { (signUpResult, error) in
            
            self.hideProgressHub()
            
            if let signUpResult = signUpResult {
                switch(signUpResult.signUpConfirmationState) {
                case .confirmed:
                    self.showAlert(title: "Verified!", msg: "Your account has been successfully verified!", {
                        Switcher.updateRootVC(logined: false)
                    })
                case .unconfirmed:
                    self.showAlert(title: nil, msg: "User is not confirmed and needs verification via \(signUpResult.codeDeliveryDetails!.deliveryMedium) sent at \(signUpResult.codeDeliveryDetails!.destination!)")
                case .unknown:
                    self.showAlert(title: nil, msg: "Somthing went wrong!")
                }
            } else if let error = error {
                self.showErrorMessage(error: error)
            }
        }
    }
    
    func confirmSignIn() {
        AWSMobileClient.default().confirmSignIn(challengeResponse: codeTextField.text!) { (signInResult, error) in
            if let error = error  {
                self.showErrorMessage(error: error)
            } else if let signInResult = signInResult {
                switch (signInResult.signInState) {
                case .signedIn:
                    print("User is signed in.")
                    Switcher.updateRootVC(logined: true)
                default:
                    self.showAlert(title: nil, msg: "\(signInResult.signInState.rawValue)")
                }
            }
        }
    }
}
