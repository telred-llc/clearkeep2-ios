//
//  DetailConversationScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/14/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI
import AWSAppSync

struct DetailConversationScreen: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @ObservedObject private var viewModel = DetailConversationViewModel()
    @State private var message = ""
    @State var conversation: ConversationModel?
    @State private var heightTF: CGFloat = 45
    
    var body: some View {
        VStack {
            List((viewModel.conversationData?.messages?.items?.reversed())?.compactMap({$0}) ?? [], id: \.id) { (message: MessageModel) in
                MessageItemView(model: message)
                    .scaleEffect(x: 1, y: -1)
                
            }
            .scaleEffect(x: 1, y: -1)
            .offset(x: 0, y: 1)
            
            HStack(alignment: .bottom, spacing: 0) {
                GrowTextView(value: $message, placeholder: "Type a message", height: $heightTF)
                    .font(.system(size: 15, weight: .medium))
                    .padding(.top, 3)
                    .padding(.horizontal, 16)
                    .frame(minHeight: 45, maxHeight: heightTF)
                    .background(Color("background_textfield"))
                    .cornerRadius(22.5)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 8)
                
                
                Text("SEND")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
                    .frame(maxHeight: 45)
                    .padding(.horizontal, 16)
                    .background(Color("cyanColor"))
                    .cornerRadius(22.5)
                    .padding(.trailing, 8)
                    .padding(.vertical, 8)
                    .onTapGesture {
                        self.viewModel.sendMessage(content: self.message)
                        self.message = ""
                }
                
            }
            .frame(minHeight: 60)
            .background(Color.clear)
        }
        .onAppear() {
            UITableView.appearance().separatorColor = .clear
            self.viewModel.idConversation = self.conversation?.conversation.id ?? ""
            self.viewModel.subscribeNewMessage(conversationId: self.conversation?.conversation.id ?? "")
            if self.viewModel.conversationData?.messages?.items?.isEmpty ?? true {
                self.viewModel.refreshData(false)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: leadingView())
    }
    
    
    private func leadingView() -> some View {
        HStack {
            Image("back")
                .scaledToFit()
                .foregroundColor(Color("title_color"))
                .frame(width: 50, height: 50)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                    
            }
            VStack(alignment: .leading) {
                Text(conversation?.conversation.name ?? "").font(.system(size: 16, weight: .bold))
            }
        }
        .offset(x: -16, y: 0)
    }
}
