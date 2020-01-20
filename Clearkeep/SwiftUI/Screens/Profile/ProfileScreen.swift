//
//  ProfileScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI
import AWSMobileClient
struct ProfileScreen: View {
    
    var body: some View {
        VStack {
            Text("HELO Profile")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
        .navigationBarTitle(Text("Profile"), displayMode: .inline)
        .navigationBarItems(trailing:
            Text("Logout")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color.red)
                .onTapGesture {
                    Utils.showProgressHub()
                    AWSMobileClient.default().signOut { (error) in
                        if let error = error {
                            MessageUtils.showErrorMessage(error: error)
                        } else {
                            Session.shared.meData = nil
                            Utils.hideProgressHub()
                        }
                    }
            }
        )
        
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
