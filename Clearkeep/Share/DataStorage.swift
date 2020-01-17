//
//  DataStorage.swift
//  CKAppSycn
//
//  Created by Vu Vuong on 1/10/20.
//  Copyright © 2020 klinh. All rights reserved.
//

import Foundation
import SwiftUI

final class DataStorage: ObservableObject {
    static var shared = DataStorage()
    @Published var dataConversation = [ConversationModel]()
}

