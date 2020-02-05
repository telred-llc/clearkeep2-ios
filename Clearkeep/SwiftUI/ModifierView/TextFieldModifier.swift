

import Foundation
import SwiftUI

struct TextFieldLoginModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(8)
            .background(Color("background_textfield"))
            .cornerRadius(5.0)
    }
}
