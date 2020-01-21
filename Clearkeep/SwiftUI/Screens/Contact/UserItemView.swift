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
        let first = String(model?.username.prefix(1) ?? "").uppercased()
        
        return VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center,spacing: 8) {
                ZStack {
                    Text(first)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(minWidth: 35, maxWidth: 35, minHeight: 35,maxHeight: 35, alignment: .center)
                .background(Color(UIColor(rgb: 0x0088cc)))
                .clipShape(Circle())
                .padding(.leading, 8)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(model?.username ?? "")
                        .font(Font.system(size: 16, weight:.bold))
                        .foregroundColor(Color("title_color"))
                }
                Spacer()
                Text("+")
                    .font(.system(size: 18, weight: .bold))
                    .frame(minWidth: 35, maxWidth: 35, minHeight: 35,maxHeight: 35, alignment: .center)
                    .padding(.horizontal, 16)                
            }
            .frame(minHeight: 50,maxHeight: 50, alignment: .center)
            .background(Color("message_view"))
            .cornerRadius(25)
            .padding(8)
            
        }
        
    }
}

struct UserItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserItemView()
    }
}
