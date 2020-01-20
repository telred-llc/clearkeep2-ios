//
//  MasterViewController.swift
//  Clearkeep
//
//  Created by Pham Hoa on 1/10/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSAppSync
import AWSMobileClient
import PromiseKit

class MasterViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!

    var discardAllUsers: Cancellable?
    var discardConvLink: Cancellable?
    var discardMessages: Cancellable?
    var allUsers: [ListUsersQuery.Data.ListUser.Item] = []
    var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    var detailViewController: DetailViewController? = nil
    var creatingConversationLink: CreateConvoLinkMutation.Data.CreateConvoLink?

    typealias CreateConvoResult = (CreateConvoMutation.Data.CreateConvo, CreateConvoLinkMutation.Data.CreateConvoLink?)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshAllData()

        if let meId = self.meData?.id {
            self.subscribeNewConvLink(userId: meId)
        }
        
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        
        tableView.cr.addHeadRefresh { [weak self] in
            self?.refreshAllData(true)
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(appDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNaivigation(title: "Clearkeep")
        self.setupRightMenu(title: "SignOut")
    }
    
    @objc func appDidBecomeActive() {
        self.refreshAllData(false)
    }

    func refreshAllData(_ animated: Bool = true) {
        // clear data
        discardAllUsers?.cancel()
        discardMessages?.cancel()
        discardConvLink?.cancel()

        // subscribeNewMessage
        if let conversationId = detailViewController?.conversationId, conversationId.count > 0 {
            self.subscribeNewMessage(conversationId: conversationId)
        }

        // subscribeNewConversation
        if let meId = self.meData?.id {
            self.subscribeNewConvLink(userId: meId)
        }

        // fetch users
        firstly { () -> PromiseKit.Promise<[ListUsersQuery.Data.ListUser.Item]?>  in
            if animated {
                self.showProgressHub()
            }
            return self.fetchAllUsers()
            }.done({ (users) in
                self.allUsers = users?.filter({ $0.id != self.meData?.id }) ?? []
            }).ensure {
                self.hideProgressHub()
                self.tableView.reloadData()
                self.tableView.cr.endHeaderRefresh()
            }.catch { (error) in
                self.showErrorMessage(error: error)
        }
    }
    
    func fetchAllUsers() -> PromiseKit.Promise<[ListUsersQuery.Data.ListUser.Item]?> {
        return PromiseKit.Promise<[ListUsersQuery.Data.ListUser.Item]?> { (resolver) in
            appSyncClient?.fetch(query: ListUsersQuery(), cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                    self.showErrorMessage(error: error)
                } else {
                    resolver.fulfill(result?.data?.listUsers?.items?.compactMap({ $0 }))
                }
            })
        }
    }

    func fetchAllUserFromLocal() {
        appSyncClient?.fetch(query: ListUsersQuery.init(), cachePolicy: CachePolicy.returnCacheDataDontFetch, resultHandler: { (result, error) in
            if let error = error {
                print(error)
            } else if let result = result {
                self.allUsers = result.data?.listUsers?.items?.compactMap({ $0 }).filter({ $0.id != self.meData?.id }) ?? []
                self.tableView.reloadData()
            }
        })
    }
    
    func subscribeNewMessage(conversationId: String) {
        if conversationId.count == 0 {
            return
        }
        do {
            discardMessages = try appSyncClient?.subscribe(subscription: OnCreateMessageSubscription.init(messageConversationId: conversationId), queue: DispatchQueue.main, resultHandler: { (result, transaction, error) in
                if let result = result {
                    if let snapshot = result.data?.onCreateMessage?.snapshot {
                        self.detailViewController?.addNewMessage(message: GetConvoQuery.Data.GetConvo.Message.Item.init(snapshot: snapshot))
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
    func subscribeNewConvLink(userId: String) {
        do {
            discardConvLink = try appSyncClient?.subscribe(subscription: OnCreateConvoLinkSubscription.init(convoLinkUserId: userId), resultHandler: { [weak self] (result, transaction, error) in
                if let result = result,
                    let newConvoLink = result.data?.onCreateConvoLink {
                    if self?.meData?.id == newConvoLink.convoLinkUserId {

                        let newConvLink = GetUserQuery.Data.GetUser.Conversation.Item.init(snapshot: newConvoLink.snapshot)
                        self?.meData?.conversations?.items?.append(newConvLink)
                        self?.tableView.reloadData()

                        // If convLink was created by this user then show chat detail screen
                        if let creatingConversationLink = self?.creatingConversationLink,
                            creatingConversationLink.convoLinkUserId == newConvoLink.convoLinkUserId {
                            self?.showDetail(conversation: newConvLink)
                        }
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }

    func createConversationAndLink(name: String, ownerId: String, otherUserId: String, completion: ((Bool, CreateConvoLinkMutation.Data.CreateConvoLink?) -> Void)?) {
        firstly { () -> PromiseKit.Promise<CreateConvoMutation.Data.CreateConvo> in
            self.showProgressHub()
            return createConversation(name: name, ownerId: ownerId)
            }.then({ (createdConv) -> PromiseKit.Promise<CreateConvoResult> in
                return self.createConversationLink(conv: createdConv, userId: otherUserId)
            }).then({ (result) -> PromiseKit.Promise<CreateConvoResult> in
                return self.createConversationLink(conv: result.0, userId: ownerId)
            }).done({ (result) in
                completion?(true, result.1)
            }).ensure {
                self.hideProgressHub()
            }.catch { (error) in
                print(error)
                completion?(false, nil)
        }
    }
    
    func createConversation(name: String, ownerId: String) -> PromiseKit.Promise<CreateConvoMutation.Data.CreateConvo> {
        return PromiseKit.Promise<CreateConvoMutation.Data.CreateConvo> { (resolver) in
            appSyncClient?.perform(mutation: CreateConvoMutation.init(input: CreateConversationInput.init(name: name, members: [ownerId])), queue: DispatchQueue.main, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    if let createdConvo = result?.data?.createConvo {
                        resolver.fulfill(createdConvo)
                    } else {
                        resolver.reject(CQLError.unknownError)
                    }
                }
            })
        }
    }

    func createConversationLink(conv: CreateConvoMutation.Data.CreateConvo, userId: String) -> PromiseKit.Promise<CreateConvoResult> {
        return PromiseKit.Promise<CreateConvoResult> { (resolver) in
            let id = UUID().uuidString
            let createdAt = "\(Int64(Date.init().timeIntervalSince1970 * 1000))"

            appSyncClient?.perform(mutation: CreateConvoLinkMutation.init(input: CreateConvoLinkInput.init(id: id, convoLinkUserId: userId, convoLinkConversationId: conv.id, createdAt: createdAt, updatedAt: nil)), queue: DispatchQueue.main, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    resolver.fulfill((conv, result?.data?.createConvoLink))
                }
            })
        }
    }
    
    func fetchAllMessages(conversationId: String) -> PromiseKit.Promise<[GetConvoQuery.Data.GetConvo.Message.Item]> {
        return PromiseKit.Promise<[GetConvoQuery.Data.GetConvo.Message.Item]> { (resolver) in
            appSyncClient?.fetch(query: GetConvoQuery.init(id: conversationId), cachePolicy: CachePolicy.fetchIgnoringCacheData, queue: DispatchQueue.main, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    if let messages = result?.data?.getConvo?.messages?.items?.compactMap({ return $0 }) {
                        resolver.fulfill(messages)
                    } else {
                        resolver.reject(CQLError.unknownError)
                    }
                }
            })
        }
    }

    func showDetail(conversation: GetUserQuery.Data.GetUser.Conversation.Item?) {
        detailViewController?.conversationName = conversation?.conversation.name ?? ""
        if detailViewController?.conversationId != conversation?.convoLinkConversationId {
            detailViewController?.conversationId = conversation?.convoLinkConversationId ?? ""
            self.subscribeNewMessage(conversationId: detailViewController?.conversationId ?? "")
            self.showDetailViewController(detailViewController!, sender: nil)
        } else {
            self.showDetailViewController(detailViewController!, sender: nil)
        }
    }

    override func buttonRightTapped() {
        AWSMobileClient.default().signOut()
    }
}

extension MasterViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return allUsers.count
        default:
            return meData?.conversations?.items?.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            let user = allUsers[indexPath.row]
            cell.textLabel?.text = user.username
        case 1:
            if let linkedConversations = meData?.conversations?.items,
                let linkedConversation = linkedConversations[indexPath.row] {
                cell.textLabel?.text = linkedConversation.conversation.name
            } else {
                cell.textLabel?.text = nil
            }
        default:
            cell.textLabel?.text = nil
        }
        
        return cell
    }
}

extension MasterViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            let selectedUser = allUsers[indexPath.row]

            if let existingLinkedConv = meData?.conversations?.items?.first(where: { conversation in
                selectedUser.id == conversation?.convoLinkUserId
            }) {
                showDetail(conversation: existingLinkedConv)
            } else {
                // Preload the data source before performing the segue
                let conversationName = meData!.username + " and " + selectedUser.username
                if let meId = meData?.id {
                    self.createConversationAndLink(name: conversationName, ownerId: meId, otherUserId: selectedUser.id) { [weak self] (isSuccess, conversationLink) in
                        if isSuccess, let conversationLink = conversationLink {

                            // If the app has reviced newConvLink from sunscription then push to the detail screen.
                            // If not: then the app should wait a message from subscription
                            if let existingConvLink = self?.meData?.conversations?.items?.first(where: { $0?.id == conversationLink.id }) {
                                self?.showDetail(conversation: existingConvLink)
                            } else {
                                self?.creatingConversationLink = conversationLink
                            }
                        } else {
                            print("Can not createConversationAndLink")
                            self?.creatingConversationLink = nil
                        }
                    }
                }
            }
        } else if indexPath.section == 1 {
            if let linkedConversations = meData?.conversations?.items {
                let linkedConversation = linkedConversations[indexPath.row]
                showDetail(conversation: linkedConversation)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel.init()
        switch section {
        case 0:
            label.text = "  Users"
        default:
            label.text = "  Conversations"
        }
        
        label.backgroundColor = UIColor.darkGray
        label.textColor = UIColor.white
        return label
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}
