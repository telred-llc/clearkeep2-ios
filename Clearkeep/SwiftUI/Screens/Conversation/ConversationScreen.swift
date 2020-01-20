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
    @State private var contentOffset: CGFloat = 0
    var body: some View {
        let isNoConversation = viewModel.conversations.isEmpty
        return VStack {
            GeometryReader { geometry in
                CustomScrollView(isNoConversation ? [] : .vertical, showIndicators: true, contentOffset: self.$contentOffset) {
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
            
        .navigationBarTitle(Text("Conversations"), displayMode: .inline)
        .onAppear() {
            self.viewModel.subscribeNewConvLink(userId: Session.shared.meData?.id ?? "")
        }
    }
}

struct ConversationScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConversationScreen()
    }
}
