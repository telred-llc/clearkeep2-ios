//
//  MessageModel.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/14/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation

final class MessageModel: NSObject, Identifiable {
    var id: String?
    var avatar: String?
    var userName: String?
    var isOwner: Bool = false
    var time: Double?
    var message: String?
    
    init(name: String, isOwner: Bool = false, mess: String){
        self.id = UUID().uuidString
        self.userName = name
        self.isOwner = isOwner
        self.message = mess
        self.time = Date().timeIntervalSince1970.binade
    }
}
