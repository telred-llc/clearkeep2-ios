//
//  ContactScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct ContactScreen: View {
    @ObservedObject private var viewModel = UserViewModel()
    
    init() {
        UINavigationBar.appearance().barTintColor = UIColor(named: "background_view")
        self.viewModel.getAllUser(animated: false)
    }
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(viewModel.users , id: \.id) { (data: UserModel) in
                    UserItemView(model: data).onTapGesture {
                        Utils.showAlert(viewHosting: UIHostingController(rootView: CreateConversationPopup(type: .normal, createConversation: { (roomName) in
                            //Create conversation link with name
                            self.viewModel.createConversationAndLink(name: roomName, ownerId: Session.shared.meData?.id ?? "", otherUserId: data.id) { (success, result) in
                                print("Create Conversation with user finish:", success)
                            }
                        })))
                    }
                }
            }
            
        }
            
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarTitle(Text("Users"), displayMode: .inline)
        .navigationBarItems(trailing: Text(""))
    }
}

struct ContactScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactScreen()
    }
}
