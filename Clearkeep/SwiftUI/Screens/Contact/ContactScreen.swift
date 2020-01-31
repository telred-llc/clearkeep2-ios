
import SwiftUI

struct ContactScreen: View {
    @ObservedObject private var viewModel = ContactViewModel()
    
    private var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    
    init() {
        UINavigationBar.appearance().barTintColor = UIColor(named: "background_view")
        NotificationCenter.default.addObserver(forName: NSNotification.Name.init("DidReceiveNewCoversation"), object: nil, queue: nil, using: self.didReceiveConver(noti:))
        self.viewModel.getUser()
    }
    
    var body: some View {
        return VStack {
            NavigationLink(destination: DetailConversationScreen(conversation: self.viewModel.modelDetail), isActive: $viewModel.isSuccess) {
                Text("").frame(maxHeight: 0)
            }
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(viewModel.users , id: \.id) { (data: UserModel) in
                    ContactItemView(model: data, didSelected: { id in
                        Utils.showAlert(viewHosting: UIHostingController(rootView: CreateConversationPopup(type: .normal, createConversation: { (roomName) in
                            self.viewModel.createCVandLink(name: roomName, ownerId: Session.shared.meData?.id ?? "", otherUserId: data.id) { (success, result) in
                                print("Create Conversation with user finish:", success)
                            }
                        })))
                    })
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarTitle(Text("Users"), displayMode: .inline)
        .navigationBarItems(trailing: Text(""))
        .onAppear() {
            if self.viewModel.users.isEmpty {
                self.viewModel.getUser()
            }
        }
        
    }
    
    private func didReceiveConver(noti: Notification) {
        if let data = noti.userInfo {
            if let model = data["newConversation"] as? ConversationModel {
                DispatchQueue.main.async {
                    self.viewModel.modelDetail = model
                    self.viewModel.isSuccess = true
                }
            }
        }
    }
}

struct ContactScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactScreen()
    }
}

