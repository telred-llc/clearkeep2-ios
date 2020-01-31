
import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject private var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    //MARK: - NavigationLink auto
                    NavigationLink(destination: ConfirmationScreen(type: $viewModel.type.wrappedValue, username: viewModel.username), isActive: $viewModel.isShowConfirm) {
                        Text("")
                    }
                    LogoImage().padding(.bottom, 20)
                    FlatTextField(title: "Username", text: $viewModel.username)
                        .modifier(TextFieldLoginModifier())
                    
                    FlatTextField(title: "Password", text: $viewModel.password, isSecure: true)
                        .modifier(TextFieldLoginModifier())
                    
                    Text("LOGIN")
                        .modifier(ButtonLoginModifier())
                        .onTapGesture {
                            //TODO: handle login here
                            self.viewModel.login()
                    }
                    
                    HStack(spacing: 4) {
                        Text("Dou you have an account?")
                            .font(Font.system(size: 14, weight: .regular))
                            .foregroundColor(Color("gray"))
                        Button(action: {
                            
                        }, label: {
                            Text("Signup Now")
                                .font(Font.system(size: 15, weight: .bold))
                                .foregroundColor(Color("gray"))
                                .padding(.vertical, 16)
                                .onTapGesture {
                                    Switcher.changeRootView(view: UIHostingController(rootView: RegisterScreen()))
                            }
                        })
                    }
                    
                    NavigationLink(destination: ForgotPasswordScreen()) {
                        Text("Forgot pasword")
                            .font(Font.system(size: 15, weight: .bold))
                            .foregroundColor(Color("gray"))
                            .padding(.horizontal, 30)
                            .padding(.vertical, 16)
                    }
                    
                    Spacer()
                    
                }
                .navigationBarTitle("Login", displayMode: .inline)
                .padding(30)
                .background(Color("background_view"))
                .edgesIgnoringSafeArea(.vertical)
            }
        }
        
    }
}

// MARK: - Components
struct WelcomeText : View {
    var body: some View {
        return Text("Welcome!")
            .font(.largeTitle)
            .foregroundColor(Color("cyanColor"))
            .fontWeight(.semibold)
    }
}

struct LogoImage : View {
    var body: some View {
        return Image("logo-dark")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
            .clipped()
    }
}

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(Color("cyanColor"))
            .cornerRadius(5.0)
            .padding()
    }
}

//MARK: - Preview
struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

