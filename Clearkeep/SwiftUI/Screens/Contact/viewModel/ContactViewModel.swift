
import Foundation
import SwiftUI
import AWSMobileClient
import AWSAppSync
import Combine

typealias UserModel = ListUsersQuery.Data.ListUser.Item
class ContactViewModel: ObservableObject {
    @Published var users: [UserModel] = []
    @Published var isSuccess = false
    private var userCancellable = Set<AnyCancellable>()
    private var convCancellable = Set<AnyCancellable>()
    private var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    
    var modelDetail: ConversationModel?
    typealias CreateConvoResult = (CreateConvoMutation.Data.CreateConvo, CreateConvoLinkMutation.Data.CreateConvoLink?)
    
    func getUser() {
        Utils.showProgressHub()
        _ = Future<[UserModel], Error> { promise in
            Utils.appSyncClient?.fetch(query: ListUsersQuery(), cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
                Utils.hideProgressHub()
                if let error = error {
                    promise(.failure(error))
                    MessageUtils.showErrorMessage(error: error)
                } else {
                    let items = result?.data?.listUsers?.items?.compactMap({ $0 }) ?? []
                    promise(.success(items))
                }
            })
        }
        .receive(on: DispatchQueue.main)
        .sink(receiveCompletion: { _ in }) { (users) in
            self.users = users.filter({ $0.id != self.meData?.id })
            Session.shared.users = self.users
        }
        .store(in: &userCancellable)
        
    }
    
    private func fetchAllUserFromLocal() {
        Utils.appSyncClient?.fetch(query: ListUsersQuery.init(), cachePolicy: CachePolicy.returnCacheDataDontFetch, resultHandler: { (result, error) in
            if let error = error {
                print(error)
            } else if let result = result {
                self.users = result.data?.listUsers?.items?.compactMap({ $0 }).filter({ $0.id != self.meData?.id }) ?? []
            }
        })
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
                    let convLink = result?.data?.createConvoLink
                    if let existingConvLink = self.meData?.conversations?.items?.first(where: { $0?.id == convLink?.conversation.id }) {
                        if let modelUnwrap = existingConvLink {
                            NotificationCenter.default.post(name: NSNotification.Name.init("DidReceiveNewCoversation"), object: nil, userInfo: ["newConversation": modelUnwrap])
                        }
                    } else {
                        Session.shared.lastConvLink = convLink
                    }
                    promise(.success((conv, convLink)))
                }
            })
        }
    }
    
    func createCVandLink(name: String, ownerId: String, otherUserId: String, completion: @escaping (Bool, CreateConvoLinkMutation.Data.CreateConvoLink?) -> Void) {
        _ = createCV(name: name, members: [ownerId, otherUserId])
            .flatMap({self.createCVLink(conv: $0, userId: ownerId)})
            .flatMap({self.createCVLink(conv: $0.0, userId: otherUserId)})
            .sink(receiveCompletion: {_ in }, receiveValue: { result in
                completion(true, result.1)
            })
        .store(in: &convCancellable)
    }
}

