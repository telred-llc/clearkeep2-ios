//
//  ListContactView.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/22/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct ListContactView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @ObservedObject private var viewModel = ListContactViewModel()
    var idConversation = ""
    var done: ((_ ids: [String]) -> Void)?
    var body: some View {
        VStack {
            HStack {
                FlatTextField(title: "Search user", text: $viewModel.searchValue)
                    .font(.system(size: 15, weight: .medium))
                    .padding(.top, 3)
                    .padding(.horizontal, 16)
                    .frame(minHeight: 40, maxHeight: 40)
                    .background(Color("background_textfield"))
                    .cornerRadius(20)
                
                Text("Done")
                    .foregroundColor(.white)
                    .frame(minHeight: 40, maxHeight: 40)
                    .padding(.horizontal, 16)
                    .background(Color("cyanColor"))
                    .cornerRadius(20)
                    .onTapGesture {
                        self.done?(self.viewModel.memberIds)
                        self.viewModel.memberIds.removeAll()
                        self.presentationMode.wrappedValue.dismiss()
                }
                
            }
            
            
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(viewModel.users.enumerated().map({$0}) , id: \.1.id) { (index: Int, data: UserModel) in
                    ContactItemView(model: data, type: .addUser, didSelected: { (id: String) in
                        self.viewModel.memberIds.append(id)
                    })
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(16)
    }
}

struct ListContactView_Previews: PreviewProvider {
    static var previews: some View {
        ListContactView()
    }
}
