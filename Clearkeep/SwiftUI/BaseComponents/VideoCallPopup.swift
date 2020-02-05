
import SwiftUI
import Foundation

enum VideoCallPopupType {
    case create, join
}

struct VideoCallPopup: View {
    @ObservedObject private var keyboard = KeyboardManager()
    @State private var text: String = ""
    @State private var isAnima = false
    var type: VideoCallPopupType?
    var done: ((_ roomName: String) -> Void)?
    
    init(type: VideoCallPopupType) {
        self.type = type
    }
    
    init(type: VideoCallPopupType, done: ((_ roomName: String) -> Void)? = nil) {
        self.type = type
        self.done = done
    }
    
    var body: some View {
        
        VStack {
            Text(type == VideoCallPopupType.create ? "Create Video Room" : "Join Room").font(.system(size: 18, weight: .bold))
            FlatTextField(title: "Room name", text: $text)
                .font(.system(size: 12, weight: .medium))
                .modifier(TextFieldLoginModifier())
            
            HStack {
                Text("CANCEL")
                    .font(.system(size: 14, weight: .medium))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color("background_textfield"))
                    .cornerRadius(5)
                    .onTapGesture {
                        Utils.dismissAlert()
                }
                
                Text("OK")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color("background_textfield"))
                    .cornerRadius(5)
                    .onTapGesture {
                        self.done?(self.text)
                        Utils.dismissAlert()
                }
            }
            .padding(.vertical, 8)
            
        }
        .onAppear() {
            self.isAnima = true
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("color_popup"))
        .cornerRadius(10)
        .offset(y: -self.keyboard.currentHeight/2)
        .animation(.default)
    }
}
