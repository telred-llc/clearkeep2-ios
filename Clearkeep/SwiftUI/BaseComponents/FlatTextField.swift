//
//  FlatTextField.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct FlatTextField: View {
    @State var title: String = ""
    @Binding var text: String
    var isSecure: Bool = false
    var body: some View {
        return  VStack {
            if isSecure {
                SecureField(title, text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
            } else {
                TextField(title, text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
            }
        }
        
    }
}

struct FlatTextField_Previews: PreviewProvider {
    static var previews: some View {
        FlatTextField(text: .constant("hehe"))
    }
}
