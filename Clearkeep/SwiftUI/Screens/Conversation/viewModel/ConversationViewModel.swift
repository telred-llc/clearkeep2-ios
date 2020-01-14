//
//  RoomViewModel.swift
//  CKAppSycn
//
//  Created by Vu Vuong on 1/9/20.
//  Copyright © 2020 klinh. All rights reserved.
//

import Foundation
import SwiftUI

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

final class ConversationViewModel: ObservableObject {
    @Published var data = [ConversationModel]()
    
    init() {
        makeData()
    }
    
    func makeData() {
        let dataFake = [["Robbert", "There are two ways you can fix this; which you choose depends on the behavior you want"], ["Petter Chesc", "With that modifier in place, your original image will be visible as you expected"],["Alex Chan", "There are two ways you can fix this; which you choose depends on the behavior you want"], ["Hwang Kio Soong", "With that modifier in place, your original image will be visible as you expected"], ["Vũ Vương", "There are two ways you can fix this; which you choose depends on the behavior you want"], ["A Klinh", "With that modifier in place, your original image will be visible as you expected"], ["A Hoà", "There are two ways you can fix this; which you choose depends on the behavior you want"], ["David", "With that modifier in place, your original image will be visible as you expected"],["Robbert", "There are two ways you can fix this; which you choose depends on the behavior you want"], ["Petter Chesc", "With that modifier in place, your original image will be visible as you expected"],["Alex Chan", "There are two ways you can fix this; which you choose depends on the behavior you want"], ["Hwang Kio Soong", "With that modifier in place, your original image will be visible as you expected"]]
        let mess1 = MessageModel(name: "Johsn", isOwner: false, mess: "hehe")
        let mess2 = MessageModel(name: "Johsn", isOwner: false, mess: "xinchao")
        let mess3 = MessageModel(name: "me", isOwner: true, mess: "Hi!")
        let mess4 = MessageModel(name: "Johsn", isOwner: false, mess: "How are you?")
        let mess5 = MessageModel(name: "Johsn", isOwner: false, mess: "Im fine")

        self.data = dataFake.map({ ConversationModel(name: $0.first ?? "", lastMess: $0.last ?? "")})
        self.data.forEach({$0.messages = [mess1, mess2, mess3, mess4, mess5].reversed()})
        DataStorage.shared.dataConversation = self.data
        print("Done")
    }
}
