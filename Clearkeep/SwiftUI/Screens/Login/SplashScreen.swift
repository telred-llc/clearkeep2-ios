//
//  SplashScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/16/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI
import AWSMobileClient

struct SplashScreen: View {
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
                Switcher.updateRootVC(logined: true)
            default:
                // auto signin
                if let lastCredential = Session.shared.lastCredential,
                    let username = lastCredential.0,
                    let password = lastCredential.1 {
                    
                    AWSMobileClient.default().signIn(username: username, password: password) { (result, error) in
                        if let signInResult = result?.signInState, signInResult == .signedIn {
                            Switcher.updateRootVC(logined: true)
                        } else {
                            Switcher.updateRootVC(logined: false)
                        }
                    }
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
