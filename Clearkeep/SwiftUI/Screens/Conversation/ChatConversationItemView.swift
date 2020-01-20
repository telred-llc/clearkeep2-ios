//
//  ChatConversationItemView.swift
//  SwiftUI-Macos
//
//  Created by Vu Vuong on 1/8/20.
//  Copyright © 2020 Vu Vuong. All rights reserved.
//

import SwiftUI
import SwiftDate

struct ChatConversationItemView: View {
    @State var model: ConversationModel?
       
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
                    Text(model?.conversation.name ?? "")
                        .font(Font.system(size: 16, weight: .bold))
                        .foregroundColor(Color("title_color"))
                }
                Spacer()
                Text(model?.updatedAt?.toDate(Constant.globalDateFormat, region: .local)?.toString() ?? "")
                    .foregroundColor(Color.gray.opacity(0.6))
                    .font(Font.system(size: 12, weight: .regular))
                    .padding(.trailing, 16)
            }
        .frame(maxHeight: 50)
            .padding(.vertical, 8)
            .background(Color("message_view"))
            .cornerRadius(25)
            .padding(.horizontal, 8)
        }
    }
    
}

struct ChatConversationItemView_Previews: PreviewProvider {
    static var previews: some View {
        ChatConversationItemView()
    }
}
