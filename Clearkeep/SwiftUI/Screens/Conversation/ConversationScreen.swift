//
//  ConversationScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct ConversationScreen: View {
    @ObservedObject private var viewModel = ConversationViewModel()
 
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(DataStorage.shared.dataConversation , id: \.id) { (data: ConversationModel) in
                    NavigationLink(destination: DetailConversationScreen(idConversation: data.id)) {
                        ChatConversationItemView(model: data)
                    }
                    .simultaneousGesture(TapGesture().onEnded({ _ in
                        data.isSaw = true
                    }))
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
        .navigationBarTitle(Text("Conversations"), displayMode: .inline)
    }
}

struct ConversationScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConversationScreen()
    }
}
