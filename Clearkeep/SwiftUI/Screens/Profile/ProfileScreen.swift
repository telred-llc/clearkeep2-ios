//
//  ProfileScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//
import Foundation
import UIKit
import SwiftUI
import AWSMobileClient
struct ProfileScreen: View {
    
    var body: some View {
        VStack {
            Text("HELO Profile")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarTitle(Text("Profile"), displayMode: .inline)
        .navigationBarItems(trailing:
            Text("Logout")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color.red)
                .onTapGesture {
                    self.logout()
            }
        )
        
    }
    
    private func logout() {
        Utils.showProgressHub()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            AWSMobileClient.default().signOut { (error) in
                Utils.hideProgressHub()
                if let error = error {
                    MessageUtils.showErrorMessage(error: error)
                } else {
                    Session.shared.logout()
                }
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
