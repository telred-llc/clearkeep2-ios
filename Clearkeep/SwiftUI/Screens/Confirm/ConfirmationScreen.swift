
import SwiftUI

struct ConfirmationScreen: View {
    enum ConfirmationType {
        case signup
        case signin
    }
    @ObservedObject private var viewModel = ConfirmationViewModel()
    var type: ConfirmationType = .signup
    var username = ""
    
    init() {}
    
    init(type: ConfirmationType, username: String) {
        viewModel.username = username
        self.type = type
    }
    
    var body: some View {
        VStack(spacing: 20) {
            FlatTextField(title: "Verify Code*", text: $viewModel.code)
                .modifier(TextFieldLoginModifier())
            Button("Submit") {}
                .modifier(ButtonLoginModifier())
                .onTapGesture {
                    switch self.type {
                    case .signup:
                        self.viewModel.confirmSignup()
                    case .signin:
                        self.viewModel.confirmSignin()
                    }
            }
            Button("Resend verifycation code") {
                self.viewModel.resendCode()
            }
            Spacer()
            
        }
        .navigationBarTitle("Confirmation")
        .padding(.all, 30)
        .padding(.top, 30)
    }
    
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationScreen()
    }
}
