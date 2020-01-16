//
//  CreateConversationPopup.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/16/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI
import Foundation

struct CreateConversationPopup: View {
    @State private var text: String = ""
    var createConversation: ((_ roomName: String) -> Void)?
    var body: some View {
        
        VStack {
            Text("Create new conversation").font(.system(size: 18, weight: .bold))
            FlatTextField(title: "Conversation name", text: $text)
                .modifier(TextFieldLoginModifier())
                .padding(.top, 16)
            
            HStack {
                Text("CANCEL")
                    .font(.system(size: 14, weight: .medium))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
                    .onTapGesture {
                        Utils.dissmissAlert()
                }
                
                Text("OK")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color("cyanColor"))
                    .cornerRadius(5)
                    .onTapGesture {
                        self.createConversation?(self.text)
                        Utils.dissmissAlert()
                }
            }
            .padding(.vertical, 8)            
            
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct CreateConversationPopup_Previews: PreviewProvider {
    static var previews: some View {
        CreateConversationPopup()
    }
}
