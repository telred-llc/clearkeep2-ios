

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
