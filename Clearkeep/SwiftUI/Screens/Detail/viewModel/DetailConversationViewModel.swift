
import Foundation
import SwiftUI
import AWSAppSync
import AWSMobileClient
import Combine

typealias MessageModel = GetConvoQuery.Data.GetConvo.Message.Item
class DetailConversationViewModel: ObservableObject {
    private var nextToken: String?
    private lazy var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    private lazy var dateFormatter = DateFormatter.init()
    private let numberOfItemsPerPage: Int = 20
    private var discardMessages = Set<AnyCancellable>()
    private var subcribeCancellable: AWSAppSync.Cancellable?
    
    @Published var conversationData: GetConvoQuery.Data.GetConvo?
    @Published var showContact = false
    var idConversation: GraphQLID = ""
    var conversation: GetConvoQuery.Data.GetConvo.Message.Item.Conversation?
    
    
    init() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(appsyncReachabilityChanged(note:)),
            name: Notification.Name("AppSyncNetworkAvailabilityChangedNotification"),
            object: nil)
    }
    
    @objc func appsyncReachabilityChanged(note: Notification) {
        let connectionInfo = note.object as! AppSyncConnectionInfo
        let isReachable = connectionInfo.isConnectionAvailable
        if isReachable {
            getData(isReachable: isReachable)
        }
    }
    
    func clearData() {
        self.conversationData?.messages?.items?.removeAll()
    }
    
    func loadMore() {
        let copyData = self.conversationData?.messages?.items ?? []
        self.conversationData?.messages?.items?.append(contentsOf: copyData)
    }
    
    func updateCacheMessage(item: MessageModel) {
        //Update cache value
        let _ = Utils.appSyncClient?.store?.withinReadWriteTransaction({ (transaction) -> ApolloStore.ReadWriteTransaction in
            let query = GetConvoQuery.init(id: self.idConversation)
            var cacheData = try transaction.read(query: query)
            cacheData.getConvo?.messages?.items?.append(item)
            try transaction.write(data: cacheData, forQuery: query)
            return transaction
        })
    }
    
    func getData(isReachable: Bool = true) {
        if idConversation.isEmpty {
            return
        } else {
            let query = GetConvoQuery.init(id: idConversation)
            Utils.appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.returnCacheDataAndFetch, resultHandler: { (result, error) in
                if let error = error {
                    MessageUtils.showErrorMessage(error: error)
                } else {
                    let conversation = result?.data?.getConvo
                    self.conversationData = conversation
                    let items = conversation?.messages?.items?.compactMap({ return $0 }) ?? []
                    self.conversationData?.messages?.items = items
                    self.conversation = items.first?.conversation
                }
            })
            
        }
    }
    
    func sendMessage(content: String) {
        
        guard content.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).count > 0, !idConversation.isEmpty else {
            return
        }
        
        let date = Date.init()
        self.dateFormatter.dateFormat = Constant.globalDateFormat
        let createdAt = self.dateFormatter.string(from: date)
        let id = createdAt + "_" + UUID().uuidString
        if let snap = conversationData?.snapshot {
            let cvTemp = MessageModel.Conversation(snapshot: snap)
            let newMessTem = MessageModel(id: id, authorId: meData?.id, content: content, conversation: cvTemp, messageConversationId: idConversation, createdAt: createdAt)
            self.conversationData?.messages?.items?.append(newMessTem)
            
            //Update cache value
            self.updateCacheMessage(item: newMessTem)
        }
        
        let createMessageMutaion = CreateMessageMutation.init(input: CreateMessageInput.init(id: id, authorId: self.meData?.id, content: content, messageConversationId: idConversation, createdAt: createdAt, updatedAt: nil))
        
        Utils.appSyncClient?.perform(mutation: createMessageMutaion, resultHandler: { (result, error) in
            if let result = result {
                if (result.data?.createMessage?.snapshot) != nil {
                    self.objectWillChange.send()
                }
            } else {
                MessageUtils.showMess(type: .failed, string: "Can't send message! Please try again")
            }
        })
        
    }
    
    func subscribeNewMessage(conversationId: String) {
        if conversationId.count == 0 {
            return
        }
        do {
            subcribeCancellable = try Utils.appSyncClient?.subscribe(subscription: OnCreateMessageSubscription.init(messageConversationId: conversationId), queue: DispatchQueue.main, resultHandler: { (result, transaction, error) in
                if let result = result {
                    if let snapshot = result.data?.onCreateMessage?.snapshot {
                        let newMess = MessageModel(snapshot: snapshot)
                        if let indexOfExistMess = self.conversationData?.messages?.items?.firstIndex(where: {$0?.id == newMess.id}) {
                            self.conversationData?.messages?.items?[indexOfExistMess] = newMess
                        } else {
                            self.conversationData?.messages?.items?.append(newMess)
                        }
                        self.updateCacheMessage(item: newMess)
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
}
