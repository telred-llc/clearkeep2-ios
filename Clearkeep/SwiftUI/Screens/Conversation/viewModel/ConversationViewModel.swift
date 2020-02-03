

import Foundation
import SwiftUI
import AWSMobileClient
import AWSAppSync
import Combine

typealias ConversationModel = GetUserQuery.Data.GetUser.Conversation.Item

final class ConversationViewModel: ObservableObject {
    
    @Published var conversations = [ConversationModel]()
    @Published var showDetail = false
    @Published var showUsers = false
    @Published var modelDetail: ConversationModel?
    private var convCancellable = Set<AnyCancellable>()
    var discardAllUsers: AWSAppSync.Cancellable?
    var roomName = ""
    var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    var discardConvLink: AWSAppSync.Cancellable?
    var creatingConversationLink: CreateConvoLinkMutation.Data.CreateConvoLink?
    var newConvModel: ConversationModel?
    typealias CreateConvoResult = (CreateConvoMutation.Data.CreateConvo, CreateConvoLinkMutation.Data.CreateConvoLink?)
    
    init() {
        self.conversations = self.meData?.conversations?.items?.compactMap({$0}) ?? []
        self.conversations.sort { (lItem, rItem) -> Bool in
            guard let lTime = lItem.createdAt?.toDate(), let rTime = rItem.createdAt?.toDate() else {
                return false
            }
            return lTime > rTime
        }
    }
    
    func subscribeNewConvLink(userId: String) {
        discardConvLink?.cancel()
        do {
            discardConvLink = try Utils.appSyncClient?.subscribe(subscription: OnCreateConvoLinkSubscription.init(convoLinkUserId: userId), resultHandler: { [weak self] (result, transaction, error) in
                if let result = result,
                    let newConvoLink = result.data?.onCreateConvoLink {
                    if self?.meData?.id == newConvoLink.convoLinkUserId {
                        guard let `self` = self else {
                            return
                        }
                        let newConvLink = GetUserQuery.Data.GetUser.Conversation.Item.init(snapshot: newConvoLink.snapshot)
                        self.meData?.conversations?.items?.append(newConvLink)
                        self.conversations = self.meData?.conversations?.items?.compactMap({$0}) ?? []
                        self.conversations.sort { (lItem, rItem) -> Bool in
                            guard let lTime = lItem.createdAt?.toDate(), let rTime = rItem.createdAt?.toDate() else {
                                return false
                            }
                            return lTime > rTime
                        }
                        
                        if let model = self.meData?.conversations?.items?.first(where: { $0?.id == newConvLink.id }) {
                            if let modelUnwrap = model {
                                self.newConvModel = model
                                NotificationCenter.default.post(name: NSNotification.Name.init("DidReceiveNewCoversation"), object: nil, userInfo: ["newConversation": modelUnwrap])
                            }
                        }
                        
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
    func createCV(name: String, members: [String]) -> Future<CreateConvoMutation.Data.CreateConvo, Error> {
        Future<CreateConvoMutation.Data.CreateConvo, Error> { promise in
            Utils.showProgressHub()
            Utils.appSyncClient?.perform(mutation: CreateConvoMutation.init(input: CreateConversationInput.init(name: name, members: members)), queue: DispatchQueue.main, resultHandler: { (result, error) in
                Utils.hideProgressHub()
                if let error = error {
                    promise(.failure(error))
                    MessageUtils.showErrorMessage(error: error)
                } else {
                    if let createdConvo = result?.data?.createConvo {
                        promise(.success(createdConvo))
                    } else {
                        promise(.failure(CQLError.unknownError))
                    }
                }
            })
        }
    }
    
    func createCVLink(conv: CreateConvoMutation.Data.CreateConvo, userId: String) -> Future<CreateConvoResult, Error> {
        Future<CreateConvoResult, Error> { promise in
            Utils.showProgressHub()
            let id = UUID().uuidString
            let createdAt = "\(Int64(Date.init().timeIntervalSince1970 * 1000))"
            
            Utils.appSyncClient?.perform(mutation: CreateConvoLinkMutation.init(input: CreateConvoLinkInput.init(id: id, convoLinkUserId: userId, convoLinkConversationId: conv.id, createdAt: createdAt, updatedAt: nil)), queue: DispatchQueue.main, resultHandler: { (result, error) in
                Utils.hideProgressHub()
                if let error = error {
                    promise(.failure(error))
                    MessageUtils.showErrorMessage(error: error)
                } else {
                    promise(.success((conv, result?.data?.createConvoLink)))
                }
            })
        }
    }
    
    func createCVLinks(conv: CreateConvoMutation.Data.CreateConvo, members: [String]) -> Future<[CreateConvoResult], Error> {
        Future<[CreateConvoResult], Error> { promise in
            var cancellable = Set<AnyCancellable>()
            let publishers = Publishers.MergeMany(members.map({self.createCVLink(conv: conv, userId: $0)})).collect()
            _ = publishers.sink(receiveCompletion: {_ in }, receiveValue: { (results) in
                promise(.success(results))
                }).store(in: &cancellable)
        }
    }
    
    func createCVandLink(name: String, members: [String]) {
        _ = createCV(name: name, members: members)
            .flatMap({self.createCVLinks(conv: $0, members: members)})
            .sink(receiveCompletion: {_ in }) { (results) in
                let result = results.first?.1
                if let model = self.meData?.conversations?.items?.first(where: { $0?.id == result?.id }) {
                    self.modelDetail = model
                    self.showDetail = true
                } else {
                    self.creatingConversationLink = result
                }
        }
        .store(in: &convCancellable)
    }
}

