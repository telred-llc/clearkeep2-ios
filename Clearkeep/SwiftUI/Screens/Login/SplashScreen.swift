
import SwiftUI
import AWSMobileClient

struct SplashScreen: View {
    @ObservedObject private var viewModel = LoginViewModel()
    var body: some View {
        VStack {
            Image("logo-dark")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 200, maxHeight: 200)
        }.onAppear() {
            self.checkState()
        }
    }
    
    private func checkState() {
        DispatchQueue.main.async {
            switch AWSMobileClient.default().currentUserState {
            case .signedIn:
                self.viewModel.checkIfUserExists(username: Session.shared.lastCredential?.0 ?? "")
            default:
                // auto signin
                if let lastCredential = Session.shared.lastCredential,
                    let username = lastCredential.0,
                    let password = lastCredential.1 {
                    self.viewModel.username = username
                    self.viewModel.password = password
                    self.viewModel.login()
                } else {
                    Switcher.updateRootVC(logined: false)
                }
            }
        }
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
