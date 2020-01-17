//
//  UserItemView.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/16/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct UserItemView: View {
    @State var model: UserModel?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center,spacing: 8) {
                Image("img-1")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 35, maxWidth: 35, minHeight: 35,maxHeight: 35, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .fill(Color.green)
                        .frame(maxWidth: 8, maxHeight: 8)
                        .offset(x: -2, y: -2)
                        , alignment: .bottomTrailing)
                    .padding(.leading, 8)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(model?.username ?? "")
                        .font(Font.system(size: 16, weight:.bold))
                        .foregroundColor(Color("title_color"))
                }
                Spacer()
                Image(systemName: "plus")
                    .padding(.horizontal, 16)
                
            }
            .padding(.vertical, 8)
            .background(Color("message_view"))
            .cornerRadius(25)
            .padding(.horizontal, 8)
        }
        
    }
}

struct UserItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserItemView()
    }
}
