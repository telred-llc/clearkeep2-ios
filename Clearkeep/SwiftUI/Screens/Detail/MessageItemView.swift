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
        let isOwner = model?.isOwner ?? false
        return HStack(alignment: .top) {
            
            if !isOwner {
                Image("avatar")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 30, maxHeight: 30)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("\(model?.userName ?? "Unknown"), 12:09 AM").lineLimit(1)
                    Text(model?.message ?? "")
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
                    Text("12:09 AM").lineLimit(1)
                    Text(model?.message ?? "")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(8)
                        .background(Color("message_view"))
                        .cornerRadius(5)
                        .padding(.vertical, 4)
                    
                }
            }
        }
        .padding(isOwner ? .leading : .trailing , 150)
    }
}

struct MessageItemView_Previews: PreviewProvider {
    static var previews: some View {
        MessageItemView()
    }
}
