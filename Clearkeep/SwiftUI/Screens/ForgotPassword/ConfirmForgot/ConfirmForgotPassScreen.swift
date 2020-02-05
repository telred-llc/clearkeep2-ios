
import SwiftUI
import AWSMobileClient

struct ConfirmForgotPassScreen: View {
    @State private var code = ""
    @State private var newPass = ""
    @State var username = ""
    var body: some View {
        ScrollView {
            VStack {
                FlatTextField(title: "Code", text: $code)
                    .modifier(TextFieldLoginModifier())
                    .padding(.top, 50)
                
                FlatTextField(title: "New Password", text: $newPass)
                    .modifier(TextFieldLoginModifier())
                
                Button("Submit") {}
                    .modifier(ButtonLoginModifier())
                    .onTapGesture {
                        self.submit()
                }
                
                Button("Resend verifycation code") {
                    self.resendCode()
                }
                .padding(.top, 30)
                
                Spacer()
            }
        }
        .padding(30)
        .navigationBarTitle("Confirm Password", displayMode: .inline)
        
    }
    
    private func resendCode() {
        Utils.showProgressHub()
        AWSMobileClient.default().forgotPassword(username: username) { (result, error) in
            Utils.hideProgressHub()
            if let error = error {
                MessageUtils.showErrorMessage(error: error)
            } else if let result = result {
                switch result.forgotPasswordState {
                case .done:
                    break
                case .confirmationCodeSent:
                    MessageUtils.showMess(type: .success, string: "A verification code has been sent via your email")
                }
            }
        }
    }
    
    private func submit() {
        guard !code.isEmpty else {
            MessageUtils.showMess(type: .failed, string: "Please input code")
            return
        }
        Utils.showProgressHub()
        AWSMobileClient.default().confirmForgotPassword(username: username, newPassword: newPass, confirmationCode: code) { (result, error) in
            Utils.hideProgressHub()
            if let error = error {
                MessageUtils.showErrorMessage(error: error)
            } else if let result = result {
                switch result.forgotPasswordState {
                case .done:
                    MessageUtils.showMess(type: .success, string: "Change password success!")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        Switcher.updateRootVC(logined: false)
                    }
                case .confirmationCodeSent:
                    break
                }
            }
        }
    }
}

struct ConfirmForgotPassScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmForgotPassScreen()
    }
}
