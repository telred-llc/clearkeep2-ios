//
//  CreateConversationPopup.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/16/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI
import Foundation

enum ConversationPopupType {
    case normal, user
}
struct CreateConversationPopup: View {
    @ObservedObject private var keyboard = KeyboardManager()
    @State private var text: String = ""
    var type: ConversationPopupType?
    var createConversation: ((_ roomName: String) -> Void)?
    
    init(type: ConversationPopupType) {
        self.type = type
    }
    
    init(type: ConversationPopupType, createConversation: ((_ roomName: String) -> Void)? = nil) {
        self.type = type
        self.createConversation = createConversation
    }
    var body: some View {
        
        VStack {
            Text("Create new conversation").font(.system(size: 18, weight: .bold))
            if type == ConversationPopupType.normal {
                Text("Create a conversation with this user")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color("gray"))
                    .padding()
                    .background(Color("background_view"))
                FlatTextField(title: "Conversation name", text: $text)
                    .font(.system(size: 12, weight: .medium))
                    .modifier(TextFieldLoginModifier())
                
            } else {
                Text("Create a conversation with this user")
                    .font(.system(size: 12, weight: .medium))
                    .padding()
                    .background(Color("background_view"))
            }
            
            HStack {
                Text("CANCEL")
                    .font(.system(size: 14, weight: .medium))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
                    .onTapGesture {
                        Utils.dismissAlert()
                }
                
                Text("OK")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color("cyanColor"))
                    .cornerRadius(5)
                    .onTapGesture {
                        self.createConversation?(self.text)
                        Utils.dismissAlert()
                }
            }
            .padding(.vertical, 8)            
            
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color.white)
        .cornerRadius(10)
        .offset(y: -self.keyboard.currentHeight/2)
        .animation(.default)
    }
}
