
import SwiftUI
import AWSMobileClient
struct ForgotPasswordScreen: View {
    @State private var username = ""
    @State private var isConfirm = false
    var body: some View {
        VStack {
            NavigationLink(destination: ConfirmForgotPassScreen(username: username), isActive: $isConfirm) {
                Text("")
            }
            FlatTextField(title: "Username", text: $username)
                .modifier(TextFieldLoginModifier())
                .padding(.top, 70)
            
            Button("SUBMIT") {
                self.submit()
            }
            .modifier(ButtonLoginModifier())
            Spacer()
        }
        .padding(30)
        .navigationBarTitle("ForgotPasword", displayMode: .inline)
        
    }
    
    private func submit() {
        guard !username.isEmpty else {
            MessageUtils.showMess(type: .failed, string: "Please input username")
            return
        }
        Utils.showProgressHub()
        AWSMobileClient.default().forgotPassword(username: username) { (result, error) in
            Utils.hideProgressHub()
            if let error = error {
                MessageUtils.showErrorMessage(error: error)
            } else {
                switch result?.forgotPasswordState {
                case .done?:
                    break
                case .confirmationCodeSent?:
                    self.isConfirm = true
                    break
                default:
                    break
                }
            }
        }
    }
}

struct ForgotPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordScreen()
    }
}
