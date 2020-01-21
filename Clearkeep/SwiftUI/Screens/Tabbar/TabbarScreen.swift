//
//  TabbarScreen.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

class TabbarItemModel: NSObject, Identifiable {
    var image: Image?
    var title: String?
    var id: Int
    var isSelected = false
    
    init(icon: Image?, title: String?, id: Int, isSelect: Bool) {
        self.image = icon
        self.title = title
        self.id = id
        self.isSelected = isSelect
    }
}

struct TabbarScreen: View {
    @State var selectedIndex: Int = 0
    @State private var selectedColor = Color("cyanColor")
    @State private var normalColor = Color("icon_menu")
    private let tabData = [TabbarItemModel(icon: Image("ic_chat"), title: "Conversations", id: 0, isSelect: true),
                           TabbarItemModel(icon: Image("ic_contact"), title: "Users", id: 1, isSelect: false),
                           TabbarItemModel(icon: Image("ic_user"), title: "Profile", id: 2, isSelect: false)]
    private let conversationScreen = ConversationScreen()
    private let contactScreen = ContactScreen()
    private let profileScreen = ProfileScreen()
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("background_view").edgesIgnoringSafeArea(.all)
                VStack(spacing: 0) {
                    // Tabbar contentView
                    renderPageView().frame(minHeight: 0, maxHeight: .infinity)
                    
                    //Tabbar
                    Divider()
                    HStack(spacing: 0) {
                        ForEach(tabData, id: \.id) { (tabitem: TabbarItemModel) in
                            self.renderItem(itemModel: tabitem)
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                    }
                    .frame(minHeight: 49, maxHeight: 49)
                }
            }
        }
        
    }
    
    private func renderItem(itemModel: TabbarItemModel) -> some View {
        VStack(spacing: 4) {
            itemModel.image?
                .renderingMode(.template)
                .foregroundColor(itemModel.isSelected ? selectedColor : normalColor)
                .frame(maxWidth: 25, maxHeight: 25, alignment: .center)
                .padding(.top, 4)
            Text(itemModel.title ?? "")
                .font(Font.system(size: 12))
                .foregroundColor(itemModel.isSelected ? selectedColor : normalColor)
                .padding(.bottom, 2)
        }
        .tag(itemModel.id)
        .onTapGesture {
            self.selectedIndex = itemModel.id
            self.selectedItem(self.selectedIndex)
        }
    }
    
    private func renderPageView() -> some View {
        
        return VStack {
            if selectedIndex == 0 {
                conversationScreen
            } else if selectedIndex == 1 {
                contactScreen
            } else {
                profileScreen
            }
        }
    }
    
    private func selectedItem(_ index: Int) {
        tabData.forEach({$0.isSelected = false})
        tabData.first(where: {$0.id == index})?.isSelected = true
    }
}

struct TabbarScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabbarScreen()
    }
}
