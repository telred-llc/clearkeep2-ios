//
//  ButtonModifier.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import SwiftUI

struct ButtonLoginModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .bold))
            .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
            .background(Color("cyanColor"))
            .cornerRadius(5)
            .foregroundColor(Color.white)
            .padding(.top, 16)
    }
}
