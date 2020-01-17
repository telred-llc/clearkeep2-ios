//
//  PageView.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/17/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import SwiftUI

struct PageView : View {
    var viewControllers: [UIViewController]
    @Binding var currentPage: Int

    var body: some View {
        ZStack(alignment: .bottom) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
        }
    }
}



