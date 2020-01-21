//
//  ConversationScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI
import AWSAppSync

struct ConversationScreen: View {
    @ObservedObject private var viewModel = ConversationViewModel()
    @State private var isShowPopup = false
    @State private var showDetail = false
    @State private var creatingConversationLink: CreateConvoLinkMutation.Data.CreateConvoLink?
    
    init() {
        self.viewModel.subscribeNewConvLink(userId: Session.shared.meData?.id ?? "")
    }
    var body: some View {
        let isNoConversation = viewModel.conversations.isEmpty
        
        return VStack {
            
            NavigationLink(destination: DetailConversationScreen(conversation: viewModel.newConvModel), isActive: $viewModel.showDetail) {
                Text("").frame(maxHeight: 0)
            }
            GeometryReader { geometry in
                ScrollView(isNoConversation ? [] : .vertical, showsIndicators: true) {
                    if isNoConversation {
                        Image("empty_ic")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width - 50, height: geometry.size.height)
                        
                    } else {
                        ForEach(self.viewModel.conversations, id: \.id) { (data: ConversationModel) in
                            NavigationLink(destination: DetailConversationScreen(conversation: data)) {
                                ChatConversationItemView(model: data)
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
        .navigationBarItems(trailing: Text(""))
        .navigationBarTitle(Text("Conversations"), displayMode: .inline)
    }
    
}

struct ConversationScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConversationScreen()
    }
}
