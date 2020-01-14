//
//  TextFieldLoginModifier.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import SwiftUI

struct TextFieldLoginModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color("background_textfield"))
            .cornerRadius(5.0)
    }
}
