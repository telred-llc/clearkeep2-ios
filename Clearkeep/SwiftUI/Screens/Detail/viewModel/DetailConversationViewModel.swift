//
//  ChatConversationViewModel.swift
//  SwiftUI-Macos
//
//  Created by Vu Vuong on 1/8/20.
//  Copyright © 2020 Vu Vuong. All rights reserved.
//

import Foundation
import SwiftUI

class DetailConversationViewModel: ObservableObject {
    
    @Published var data = [MessageModel]()
    @State var idConversation: String?
    
    init() {
        let conversation = DataStorage.shared.dataConversation.first(where: {$0.id == idConversation})
        self.data = conversation?.messages ?? []
    }
    func send(model: MessageModel) {
        data.insert(model, at: 0)
        let model2 = MessageModel(name: "Bot", isOwner: false, mess: "This message is auto generate by Bot =))")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.data.insert(model2, at: 0)
        }
        
    }
}
