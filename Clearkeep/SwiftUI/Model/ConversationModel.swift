//
//  ConversationModel.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/15/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation

final class ConversationModel: NSObject, Identifiable, ObservableObject {
    var isSaw = false
    var id: String?
    var nameRoom: String?
    var lastMess: String?
    @Published var messages: [MessageModel]?
    
    init(name: String, lastMess: String, mess: [MessageModel]? = nil) {
        self.id = UUID().uuidString
        self.nameRoom = name
        self.lastMess = lastMess
        self.messages = mess
    }
}
