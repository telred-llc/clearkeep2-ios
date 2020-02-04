
import SwiftUI

struct ContactScreen: View {
    @ObservedObject private var viewModel = ContactViewModel()
    
    private var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    @State private var videoResponse: VideoRespone?
    
    init() {
        UINavigationBar.appearance().barTintColor = UIColor(named: "background_view")
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
                        Utils.showAlert(viewHosting: UIHostingController(rootView: CreateConversationPopup(type: .user, createConversation: { (roomName) in
                            self.viewModel.createCVandLink(name: roomName, ownerId: Session.shared.meData?.id ?? "", otherUserId: data.id) { (success, result) in
                                print("Create Conversation with user finish:", success)
                            }
                        })))
                    })
                }
            }
        }
        .sheet(isPresented: $viewModel.isShowVideoCall, content: {
            VideoView(webRTCClient: self.videoResponse?.webRTC, signalingClient: self.videoResponse?.signaling, localSenderClientID: self.videoResponse?.localSenderId, isMaster: self.videoResponse?.isMaster)
        })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitle(Text("Users"), displayMode: .inline)
            .navigationBarItems(trailing:
                HStack(spacing: 0) {
                    Image(systemName: "video.fill")
                        .onTapGesture {
                            Utils.showAlert(viewHosting: UIHostingController(rootView: VideoCallPopup(type: .join, done: { (roomName) in
                                VideoCallMananger.shared.joinRoom(name: roomName) { (isSuccess, result: VideoRespone?) in
                                    if let result = result {
                                        self.viewModel.isShowVideoCall = isSuccess
                                        self.videoResponse = result
                                    }
                                }
                            })))
                    }
                    .frame(width: 50, height: 50)
                    
                    Image(systemName: "video.badge.plus.fill")
                        .onTapGesture {
                            Utils.showAlert(viewHosting: UIHostingController(rootView: VideoCallPopup(type: .create, done: { (roomName) in
                                VideoCallMananger.shared.createRoom(name: roomName) { (isSuccess, result: VideoRespone?) in
                                    if let result = result {
                                        self.viewModel.isShowVideoCall = isSuccess
                                        self.videoResponse = result
                                    }
                                    
                                }
                            })))
                    }
                    .frame(width: 50, height: 50)
                    .offset(x: 0, y: 2)
                }
                .offset(x: 12, y: 0)
        )
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

