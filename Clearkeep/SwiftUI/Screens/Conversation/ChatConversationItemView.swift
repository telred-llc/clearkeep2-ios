
import SwiftUI
import SwiftDate

struct ChatConversationItemView: View {
    @State var model: ConversationModel?
    
    var body: some View {
        let first = String(model?.conversation.name.prefix(1) ?? "").uppercased()
        return VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center,spacing: 8) {
                ZStack {
                    Text(first)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(minWidth: 35, maxWidth: 35, minHeight: 35,maxHeight: 35, alignment: .center)
                .background(Color(UIColor(rgb: 0x009999)))
                .clipShape(Circle())
                .padding(.leading, 8)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(model?.conversation.name ?? "")
                        .font(Font.system(size: 16, weight: .bold))
                        .foregroundColor(Color("title_color"))
                }
                Spacer()
                Text((model?.conversation.createdAt ?? "").getTimeConversation())
                    .foregroundColor(Color.gray.opacity(0.6))
                    .font(Font.system(size: 12, weight: .regular))
                    .padding(.trailing, 16)
            }
            .frame(maxHeight: 50)
            .padding(.vertical, 8)
            .background(Color("message_view"))
            .cornerRadius(25)
            .padding(8)
        }
    }
    
}

struct ChatConversationItemView_Previews: PreviewProvider {
    static var previews: some View {
        ChatConversationItemView()
    }
}
