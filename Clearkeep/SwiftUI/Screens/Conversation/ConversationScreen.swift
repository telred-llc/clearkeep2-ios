
import SwiftUI
import AWSAppSync

struct ConversationScreen: View {
    @ObservedObject private var viewModel = ConversationViewModel()
    @State private var isShowPopup = false
    @State private var showDetail = false
    @State private var creatingConversationLink: CreateConvoLinkMutation.Data.CreateConvoLink?
    
    init() {
        self.viewModel.subscribeNewConvLink(userId: Session.shared.meData?.id ?? "")
    }
    
    var body: some View {
        let isNoConversation = viewModel.conversations.isEmpty
        
        return VStack {
            
            NavigationLink(destination: DetailConversationScreen(conversation: viewModel.newConvModel), isActive: $viewModel.showDetail) {
                Text("").frame(maxHeight: 0)
            }
            NavigationLink(destination: ListContactView(idConversation: "", done: { (ids) in
                var members = [self.viewModel.meData?.id].compactMap({ $0 })
                members.append(contentsOf: ids)
                self.viewModel.createCVandLink(name: self.viewModel.roomName, members: members)
            }), isActive: $viewModel.showUsers) {
                Text("").frame(maxHeight: 0)
            }
            
            GeometryReader { geometry in
                ScrollView(isNoConversation ? [] : .vertical, showsIndicators: true) {
                    if isNoConversation {
                        Image("empty_ic")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width - 50, height: geometry.size.height)
                        
                    } else {
                        ForEach(self.viewModel.conversations, id: \.id) { (data: ConversationModel) in
                            NavigationLink(destination: DetailConversationScreen(conversation: data)) {
                                ChatConversationItemView(model: data)
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
        .navigationBarItems(trailing:
            HStack(spacing: 0) {
                
                Image(systemName: "plus")
                    .onTapGesture {
                        Utils.showAlert(viewHosting: UIHostingController(rootView: CreateConversationPopup(type: .normal, createConversation: { (roomName) in
                            self.viewModel.roomName = roomName
                            self.viewModel.showUsers = true
                        })))
                }
                .frame(width: 50, height: 50)
            }
            .offset(x: 12, y: 0)
        )
            .navigationBarTitle(Text("Conversations"), displayMode: .inline)
    }
}

struct ConversationScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConversationScreen()
    }
}
