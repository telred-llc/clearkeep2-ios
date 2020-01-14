//
//  ContentView.swift
//  SwiftUI Test
//
//  Created by Vu Vuong on 11/11/19.
//  Copyright © 2019 Vu Vuong. All rights reserved.
//

import SwiftUI
import AWSMobileClient
import AWSAppSync

struct RegisterScreen: View {
    
    @State private var isShowPicker = false
    
    @ObservedObject private var viewModel = RegisterViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    FlatTextField(title: "Username*", text: $viewModel.username)
                        .modifier(TextFieldLoginModifier())
                    FlatTextField(title: "Password*", text: $viewModel.password, isSecure: true)
                    .modifier(TextFieldLoginModifier())

                    FlatTextField(title: "Email*", text: $viewModel.email)
                    .modifier(TextFieldLoginModifier())

                    NavigationLink(destination: CountryPicker(phoneCodeDataSource: $viewModel.phoneCodeDataSource, showing: $isShowPicker, model: $viewModel.phoneModel), isActive: $isShowPicker) {
                        Text(String(format: "+%@ %@", viewModel.phoneModel?.phoneCode ?? "", viewModel.phoneModel?.countryName ?? "" ))
                            .multilineTextAlignment(.leading)
                            .padding()
                            .foregroundColor(Color.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .background(Color("background_textfield"))
                        .cornerRadius(5)
                    }
                    
                    FlatTextField(title: "Phone*", text: $viewModel.phone)
                    .modifier(TextFieldLoginModifier())
                    
                    Button("REGISTER") {
                        self.viewModel.register()
                    }
                    .modifier(ButtonLoginModifier())
                    
                    HStack(spacing: 4) {
                        Text("Dou you have an account?")
                            .font(Font.system(size: 14, weight: .regular))
                            .foregroundColor(Color("gray"))
                        Button(action: {
                            
                        }, label: {
                            Text("Signin Now")
                                .font(Font.system(size: 15, weight: .bold))
                                .foregroundColor(Color("gray"))
                                .padding(.vertical, 16)
                                .onTapGesture {
                                   Switcher.changeRootView(view: UIHostingController(rootView: LoginScreen()))
                            }
                        })
                    }
                    Spacer()
                }
                .padding(.all, 30)
                .padding(.top, 30)
                .navigationBarTitle("Register")
            }
        }
    }
    
    
    private func handleDismissAlertComplete(data: Any?) {
        if let res = data as? SignUpResult {
            switch res.signUpConfirmationState {
            case .confirmed:
                Switcher.updateRootVC(logined: false)
            case .unconfirmed:
                showConfirmationVC(type: .signup)
            default:
                break
            }
        }
    }
    
    private func showConfirmationVC(type: ConfirmationViewController.ConfirmationType) {
        //           self.viewModel.showAlert(title: "PUSH", mess: "Goto ConfirmationScreen", data: nil)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        RegisterScreen()
    }
}
