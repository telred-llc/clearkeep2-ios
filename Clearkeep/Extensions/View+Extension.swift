import SwiftUI
import Foundation

extension View {
    func asAnyView() -> AnyView {
        return AnyView(self)
    }
}
