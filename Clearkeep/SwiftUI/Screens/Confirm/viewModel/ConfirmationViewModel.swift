
import Foundation
import AWSMobileClient

final class ConfirmationViewModel: ObservableObject {
    
    @Published var code: String = ""
    @Published var username: String = ""
    
    func confirmSignup() {
        Utils.showProgressHub()
        AWSMobileClient.default().confirmSignUp(username: username, confirmationCode: code) { (signUpResult, error) in
            Utils.hideProgressHub()
            if let signUpResult = signUpResult {
                switch(signUpResult.signUpConfirmationState) {
                case .confirmed:
                    MessageUtils.showMess(type: .success, string: "Your account has been successfully verified!")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        Switcher.updateRootVC(logined: true)
                        
                    }
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
        Utils.showProgressHub()
        AWSMobileClient.default().confirmSignIn(challengeResponse: code) { (signInResult, error) in
            Utils.hideProgressHub()
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
        Utils.showProgressHub()
        AWSMobileClient.default().resendSignUpCode(username: username, completionHandler: { (result, error) in
            
            Utils.hideProgressHub()
            if let signUpResult = result {
                MessageUtils.showMess(type: .success, string: "A verification code has been sent via \(signUpResult.codeDeliveryDetails!.deliveryMedium) at \(signUpResult.codeDeliveryDetails!.destination!)")
            } else if let error = error {
                MessageUtils.showErrorMessage(error: error)
            }
        })
    }
    
}
