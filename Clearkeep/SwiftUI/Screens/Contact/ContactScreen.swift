//
//  ContactScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct ContactScreen: View {
    
    init() {
        UINavigationBar.appearance().barTintColor = UIColor(named: "background_view")
    }
    
    var body: some View {
        VStack {
            Text("HELO")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
        .navigationBarTitle(Text("Contact"), displayMode: .inline)
    }
}

struct ContactScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactScreen()
    }
}
