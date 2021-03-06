
import SwiftUI
import AWSAppSync
import SwiftDate

struct DetailConversationScreen: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @ObservedObject private var viewModel = DetailConversationViewModel()
    @State private var message = ""
    @State var conversation: ConversationModel?
    @State private var heightTF: CGFloat = 40
    
    var body: some View {
        let datas = viewModel.conversationData?.messages?.items?.reversed().compactMap({$0}) ?? []
        return VStack {
            List(datas.enumerated().map({$0}), id: \.1.id) { (index: Int, message: MessageModel) in
                MessageItemView(model: message)
                    .scaleEffect(x: 1, y: -1)
                    .onAppear(perform: {
                        if index == datas.count - 5 {
                            // Loadmore here
                            //                        self.viewModel.loadMore()
                        }
                    })
                
            }
            .scaleEffect(x: 1, y: -1)
            .offset(x: 0, y: 1)
            
            HStack(alignment: .bottom, spacing: 0) {
                GrowTextView(value: $message, placeholder: "Type a message", height: $heightTF)
                    .font(.system(size: 15, weight: .medium))
                    .padding(.top, 3)
                    .padding(.horizontal, 16)
                    .frame(minHeight: 40, maxHeight: heightTF)
                    .background(Color("background_textfield"))
                    .cornerRadius(20)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 8)
                
                
                Text("SEND")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
                    .frame(maxHeight: 40)
                    .padding(.horizontal, 16)
                    .background(Color("cyanColor"))
                    .cornerRadius(20)
                    .padding(.trailing, 8)
                    .padding(.vertical, 8)
                    .onTapGesture {
                        self.viewModel.sendMessage(content: self.message)
                        self.message = ""
                }
                
            }
            .frame(minHeight: 50)
            .background(Color.clear)
            .animation(.default)
        }
        .onAppear() {
            self.setupScreen()
        }
        .sheet(isPresented: $viewModel.showContact, content: {ListContactView(idConversation: self.viewModel.idConversation)})
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: leadingView(), trailing: Text(""))
    }
    
    private func setupScreen() {
        UITableView.appearance().separatorColor = .clear
        self.viewModel.idConversation = self.conversation?.conversation.id ?? ""
        self.viewModel.subscribeNewMessage(conversationId: self.conversation?.conversation.id ?? "")
        if self.viewModel.conversationData?.messages?.items?.isEmpty ?? true {
            self.viewModel.getData()
        }
    }
    
    private func trailingView() -> some View {
        Image(systemName: "person.badge.plus")
            .scaledToFit()
            .foregroundColor(Color("title_color"))
            .frame(width: 50, height: 50)
            .offset(x: 12, y: 0)
            .onTapGesture {
                // Add user
                self.viewModel.showContact = true
                
        }
    }
    
    private func leadingView() -> some View {
        
        return HStack {
            Image("back")
                .scaledToFit()
                .foregroundColor(Color("title_color"))
                .frame(width: 50, height: 50)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                    
            }
            VStack(alignment: .leading, spacing: 3) {
                Text(conversation?.conversation.name ?? "").font(.system(size: 16, weight: .bold))
            }
        }
        .offset(x: -16, y: 0)
    }
}
