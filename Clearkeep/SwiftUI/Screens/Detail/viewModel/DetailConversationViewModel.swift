
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
    
    func clearData() {
        self.conversationData?.messages?.items?.removeAll()
    }
    
    func loadMore() {
        let copyData = self.conversationData?.messages?.items ?? []
        self.conversationData?.messages?.items?.append(contentsOf: copyData)
    }
    
    func getData() {
        if idConversation.isEmpty {
            MessageUtils.showMess(type: .failed, string: "Can't get message")

        } else {
            _ = fetchCV(idCV: idConversation).sink(receiveCompletion: {_ in }) { (conversation) in
                self.conversationData = conversation
                let items = conversation?.messages?.items?.compactMap({ return $0 }) ?? []
                self.conversationData?.messages?.items = items
            }.store(in: &discardMessages)
        }
    }
    
    func fetchCV(idCV: String) -> Future<GetConvoQuery.Data.GetConvo?, Error> {
        Future<GetConvoQuery.Data.GetConvo?, Error> { promise in
            let query = GetConvoQuery.init(id: idCV)
            Utils.appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
                if let error = error {
                    promise(.failure(error))
                } else {
                    promise(.success(result?.data?.getConvo))
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
                        self.conversationData?.messages?.items?.append(GetConvoQuery.Data.GetConvo.Message.Item.init(snapshot: snapshot))
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
}
