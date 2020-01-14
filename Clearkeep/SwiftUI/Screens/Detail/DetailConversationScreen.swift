//
//  DetailConversationScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/14/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct DetailConversationScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject private var viewModel = DetailConversationViewModel()
    @State private var message = ""
    @State private var conversation: ConversationModel?
    @State var idConversation: String?
    
    init(idConversation: String?) {
        self.idConversation = idConversation
        UITableView.appearance().separatorColor = .clear
        self.conversation = DataStorage.shared.dataConversation.first(where: {$0.id == idConversation})
    }
    
    var body: some View {
        VStack {
            List(conversation?.messages ?? [], id: \.id) { (message: MessageModel) in
                MessageItemView(model: message)
                    .scaleEffect(x: 1, y: -1, anchor: .center)
                    .padding(8)
                
            }
            .scaleEffect(x: 1, y: -1, anchor: .center)
            HStack(spacing: 0) {
                FlatTextField(title: "Type a message", text: $message)
                    .font(.system(size: 13, weight: .medium))
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .frame(minHeight: 35, maxHeight: 35)
                    .background(Color("background_textfield"))
                    .cornerRadius(17.5)
                    .padding(.horizontal, 8)
                
                Text("SEND")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
                    .frame(maxHeight: 35)
                    .padding(.horizontal, 16)
                    .background(Color("cyanColor"))
                    .cornerRadius(17.5)
                    .padding(.trailing, 8)
                    .onTapGesture {
                        let mess = MessageModel(name: "Vuvuong", isOwner: true, mess: self.message)
                        
                        self.message = ""
                        self.conversation?.messages?.insert(mess, at: 0)
                        self.viewModel.send(model: mess)
                        self.viewModel.objectWillChange.send()
                }
                
            }
            .frame(minHeight: 50, maxHeight: 50)
            .background(Color.clear)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: leadingView())
    }
    
    
    private func leadingView() -> some View {
        HStack {
            Image("back")
                .scaledToFit()
                .foregroundColor(Color("title_color"))
                .frame(width: 40, height: 40)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                    
            }
            VStack(alignment: .leading) {
                Text("IOS-C8-Internal").font(.system(size: 14, weight: .bold))
                Text("vuvuong").font(.system(size: 12, weight: .regular))
            }
        }
        .offset(x: -16, y: 0)
    }
}

struct DetailConversationScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailConversationScreen(idConversation: "1")
    }
}
