//
//  MessageItemView.swift
//  SwiftUI-Macos
//
//  Created by Vu Vuong on 1/8/20.
//  Copyright © 2020 Vu Vuong. All rights reserved.
//

import SwiftUI

struct MessageItemView: View {
    @State var model: MessageModel?
    
    var body: some View {
        let isOwner = model?.authorId == Session.shared.meData?.id
        let firstCharacter = String(model?.author?.username.prefix(1) ?? "").uppercased()
        return HStack(alignment: .top) {
            
            if !isOwner {
                ZStack {
                    Text(firstCharacter)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(minWidth: 30, maxWidth: 30, minHeight: 30,maxHeight: 30, alignment: .center)
                .background(Color(UIColor(rgb: 0x009999)))
                .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("\(model?.authorId ?? "Unknown"), \((model?.createdAt ?? "").getTimeMessage())")
                        .lineLimit(1)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.gray)
                    Text(model?.content ?? "")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(8)
                        .background(Color("message_view"))
                        .cornerRadius(5)
                        .padding(.vertical, 4)
                    
                }
                Spacer()
            } else {
                Spacer()
                VStack(alignment: .trailing) {
                    Text((model?.createdAt ?? "").getTimeMessage())
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.gray)
                        .lineLimit(1)
                    Text(model?.content ?? "")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(8)
                        .background(Color("message_view"))
                        .cornerRadius(5)
                        .padding(.vertical, 4)
                    
                }
            }
        }
        .padding(isOwner ? .leading : .trailing , 70)
        .animation(.default)
    }
}

struct MessageItemView_Previews: PreviewProvider {
    static var previews: some View {
        MessageItemView()
    }
}
