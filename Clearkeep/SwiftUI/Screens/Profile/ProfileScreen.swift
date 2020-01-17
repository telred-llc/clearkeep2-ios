//
//  ProfileScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct ProfileScreen: View {
    
    var body: some View {
        VStack {
            Text("HELO Profile")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
        .navigationBarTitle(Text("Profile"), displayMode: .inline)
        .navigationBarItems(trailing: Text(""))

    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
