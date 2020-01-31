
import SwiftUI

struct FlatTextField: View {
    @State var title: String = ""
    @Binding var text: String
    var isSecure: Bool = false
    var body: some View {
        return  VStack {
            if isSecure {
                SecureField(title, text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
                    .autocapitalization(.none)
                
            } else {
                TextField(title, text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
                    .autocapitalization(.none)
                
            }
        }
        
    }
}

struct FlatTextField_Previews: PreviewProvider {
    static var previews: some View {
        FlatTextField(text: .constant("hehe"))
    }
}
