

import Foundation
import AWSMobileClient
import AWSAppSync
import PromiseKit

class ListContactViewModel: ObservableObject {
    @Published var searchValue = ""
    @Published var users = [UserModel]()
    var memberIds: [String] = []
    private let myGroup = DispatchGroup()

    private var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    
    init() {
        if searchValue.isEmpty {
            self.users = Session.shared.users ?? []
            print("get new data")
        } else {
            self.users = Session.shared.users ?? [].filter({$0.username.contains(searchValue)})
        }
    }
    
    func conversationLink(idConversation: String) {
        guard !memberIds.filter({!$0.isEmpty}).isEmpty else {
            return
        }
        Utils.showProgressHub()
        let id = UUID().uuidString
        let createdAt = "\(Int64(Date.init().timeIntervalSince1970 * 1000))"
        memberIds.forEach { (userId) in
            myGroup.enter()
            Utils.appSyncClient?.perform(mutation: CreateConvoLinkMutation.init(input: CreateConvoLinkInput.init(id: id, convoLinkUserId: userId, convoLinkConversationId: idConversation, createdAt: createdAt, updatedAt: nil)), queue: DispatchQueue.main, resultHandler: { (result, error) in
                self.myGroup.leave()
                if let error = error {
                    MessageUtils.showErrorMessage(error: error)
                } else {
                    print("Link success!")
                }
            })
        }
        
        myGroup.notify(queue: .main) {
            Utils.hideProgressHub()
        }
        
    }
}
