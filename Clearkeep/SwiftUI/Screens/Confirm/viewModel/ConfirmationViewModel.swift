//
//  ConfirmationViewModel.swift
//  AWS-Ring
//
//  Created by Vu Vuong on 11/15/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import Foundation
import AWSMobileClient
import SVProgressHUD

final class ConfirmationViewModel: ObservableObject {
    
    @Published var code: String = ""
    @Published var username: String = ""
    
    func confirmSignup() {
        SVProgressHUD.show()
        AWSMobileClient.default().confirmSignUp(username: username, confirmationCode: code) { (signUpResult, error) in
            SVProgressHUD.dismiss()
            if let signUpResult = signUpResult {
                switch(signUpResult.signUpConfirmationState) {
                case .confirmed:
                    MessageUtils.showMess(type: .success, string: "Your account has been successfully verified!")
                    
                case .unconfirmed:
                    MessageUtils.showMess(type: .warning, string: "User is not confirmed and needs verification via \(signUpResult.codeDeliveryDetails!.deliveryMedium) sent at \(signUpResult.codeDeliveryDetails!.destination!)")

                case .unknown:
                    MessageUtils.showMess(type: .failed, string: "Somthing went wrong!")
                }
            } else if let error = error {
                MessageUtils.showErrorMessage(error: error)
            }
        }
    }
    
    func confirmSignin() {
        SVProgressHUD.show()
        AWSMobileClient.default().confirmSignIn(challengeResponse: code) { (signInResult, error) in
            SVProgressHUD.dismiss()
            if let error = error  {
                MessageUtils.showErrorMessage(error: error)
            } else if let signInResult = signInResult {
                switch (signInResult.signInState) {
                case .signedIn:
                    Switcher.updateRootVC(logined: true)
                default:
                    MessageUtils.showMess(type: .success, string: "\(signInResult.signInState.rawValue)")
                }
            }
        }
    }
    
    func resendCode() {
        SVProgressHUD.show()
        AWSMobileClient.default().resendSignUpCode(username: username, completionHandler: { (result, error) in
            
            SVProgressHUD.dismiss()
            if let signUpResult = result {
                MessageUtils.showMess(type: .success, string: "A verification code has been sent via \(signUpResult.codeDeliveryDetails!.deliveryMedium) at \(signUpResult.codeDeliveryDetails!.destination!)")
            } else if let error = error {
                MessageUtils.showErrorMessage(error: error)
            }
        })
    }
    
}
