//
//  MasterViewController.swift
//  ChatQL
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
    var discardConversation: Cancellable?
    var discardMessages: Cancellable?
    var allUsers: [AllUserQuery.Data.AllUser] = []
    var meData: MeQuery.Data.Me? = Session.shared.meData
    var detailViewController: DetailViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshAllData()
        subscribeNewUsers()
        
        if let meId = self.meData?.id {
            self.subscribeNewConversation(userId: meId)
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
        self.setNaivigation(title: "ChatQL")
        self.setupRightMenu(title: "SignOut")
    }
    
    @objc func appDidBecomeActive() {
        self.refreshAllData(false)
    }

    func refreshAllData(_ animated: Bool = true) {
        // clear data
        discardAllUsers?.cancel()
        discardMessages?.cancel()
        discardConversation?.cancel()
        
        // subscribeNewMessage
        if let conversationId = detailViewController?.conversationId, conversationId.count > 0 {
            self.subscribeNewMessage(conversationId: conversationId)
        }

        // subscribeNewConversation
        if let meId = self.meData?.id {
            self.subscribeNewConversation(userId: meId)
        }

        self.subscribeNewUsers()

        // fetch users
        firstly { () -> PromiseKit.Promise<[AllUserQuery.Data.AllUser]?>  in
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
    
    func fetchAllUsers() -> PromiseKit.Promise<[AllUserQuery.Data.AllUser]?> {
        return PromiseKit.Promise<[AllUserQuery.Data.AllUser]?> { (resolver) in
            appSyncClient?.fetch(query: AllUserQuery(), cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                    self.showErrorMessage(error: error)
                } else {
                    resolver.fulfill(result?.data?.allUser?.compactMap({ $0 }))
                }
            })
        }
    }

    func fetchAllUserFromLocal() {
        appSyncClient?.fetch(query: AllUserQuery(), cachePolicy: CachePolicy.returnCacheDataDontFetch, resultHandler: { (result, error) in
            if let error = error {
                print(error)
            } else if let result = result {
                self.allUsers = result.data?.allUser?.compactMap({ $0 }).filter({ $0.id != self.meData?.id }) ?? []
                self.tableView.reloadData()
            }
        })
    }
    
    func subscribeNewUsers() {
        do {
            discardAllUsers = try appSyncClient?.subscribe(subscription: SubscribeToNewUsersSubscription(), resultHandler: { (result, transaction, error) in
                if let newUserData = result?.data?.subscribeToNewUsers {
                    let newUser = AllUserQuery.Data.AllUser.init(snapshot: newUserData.snapshot)
                    self.allUsers.append(newUser)
                    self.tableView.reloadData()
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
    func subscribeNewMessage(conversationId: String) {
        if conversationId.count == 0 {
            return
        }
        do {
            discardMessages = try appSyncClient?.subscribe(subscription: SubscribeToNewMessageSubscription.init(conversationId: conversationId), queue: DispatchQueue.main, resultHandler: { (result, transaction, error) in
                if let result = result {
                    if let snapshot = result.data?.subscribeToNewMessage?.snapshot {
                        self.detailViewController?.addNewMessage(message: AllMessageConnectionQuery.Data.AllMessageConnection.Message.init(snapshot: snapshot))
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
    func subscribeNewConversation(userId: String) {
        do {
            discardConversation = try appSyncClient?.subscribe(subscription: SubscribeToNewUCsSubscription.init(userId: userId), resultHandler: { (result, transaction, error) in
                if let result = result,
                    let newUCs = result.data?.subscribeToNewUCs {
                    if self.meData?.id == newUCs.userId {
                        self.meData?.conversations?.userConversations?.append(MeQuery.Data.Me.Conversation.UserConversation.init(snapshot: newUCs.snapshot))
                        self.tableView.reloadData()
                    }
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
    func createConversation(name: String, fromUserId: String, toUserId: String, completion: ((Bool, String?) -> Void)?) {
        firstly { () -> PromiseKit.Promise<String> in
            self.showProgressHub()
            return createConversation(name: name)
            }.then({ (conversationID) -> PromiseKit.Promise<String> in
                return self.createUserConversation(conversationId: conversationID, userId: fromUserId)
            }).then({ (conversationID) -> PromiseKit.Promise<String> in
                return self.createUserConversation(conversationId: conversationID, userId: toUserId)
            }).done({ (conversationID) in
                completion?(true, conversationID)
            }).ensure {
                self.hideProgressHub()
            }.catch { (error) in
                print(error)
                completion?(false, nil)
        }
    }
    
    func createConversation(name: String) -> PromiseKit.Promise<String> {
        return PromiseKit.Promise<String> { (resolver) in
            let id = UUID().uuidString
            let createdAt = "\(Int64(Date.init().timeIntervalSince1970 * 1000))"
            appSyncClient?.perform(mutation: CreateConversationMutation.init(createdAt: createdAt, id: id, name: name), queue: DispatchQueue.main, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    if let conversationID = result?.data?.createConversation?.id {
                        
                        resolver.fulfill(conversationID)
                    } else {
                        resolver.reject(CQLError.unknownError)
                    }
                }
            })
        }
    }

    func createUserConversation(conversationId: String, userId: String) -> PromiseKit.Promise<String> {
        return PromiseKit.Promise<String> { (resolver) in
            appSyncClient?.perform(mutation: CreateUserConversationsMutation.init(conversationId: conversationId, userId: userId), queue: DispatchQueue.main, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    resolver.fulfill(conversationId)
                }
            })
        }
    }
    
    func fetchAllMessages(conversationId: String) -> PromiseKit.Promise<[AllMessageQuery.Data.AllMessage]> {
        return PromiseKit.Promise<[AllMessageQuery.Data.AllMessage]> { (resolver) in
            appSyncClient?.fetch(query: AllMessageQuery.init(conversationId: conversationId), cachePolicy: CachePolicy.fetchIgnoringCacheData, queue: DispatchQueue.main, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    if let messages = result?.data?.allMessage?.compactMap({ return $0 }) {
                        resolver.fulfill(messages)
                    } else {
                        resolver.reject(CQLError.unknownError)
                    }
                }
            })
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
            return meData?.conversations?.userConversations?.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            let user = allUsers[indexPath.row]
            cell.textLabel?.text = user.username
        case 1:
            if let conversations = meData?.conversations?.userConversations,
                let conversation = conversations[indexPath.row] {
                cell.textLabel?.text = conversation.conversation?.name
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
        func showDetail(userConversation: MeQuery.Data.Me.Conversation.UserConversation?) {
            detailViewController?.conversationName = userConversation?.conversation?.name ?? ""
            if detailViewController?.conversationId != userConversation?.conversationId {
                detailViewController?.conversationId = userConversation?.conversationId ?? ""
                self.subscribeNewMessage(conversationId: detailViewController?.conversationId ?? "")
                self.showDetailViewController(detailViewController!, sender: nil)
            } else {
                self.showDetailViewController(detailViewController!, sender: nil)
            }
        }
        
        if indexPath.section == 0 {
            let selectedUser = allUsers[indexPath.row]
            
            if let existingConv = meData?.conversations?.userConversations?.first(where: { userConversation in
                selectedUser.conversations?.userConversations?.contains(where: { (friendConversation) in
                    userConversation?.conversationId == friendConversation?.conversationId
                }) ?? false
            }) {
                showDetail(userConversation: existingConv)
            } else {
                // Preload the data source before performing the segue
                let conversationName = meData!.username + " and " + selectedUser.username
                if let meId = meData?.id {
                    self.createConversation(name: conversationName, fromUserId: meId, toUserId: selectedUser.id) { (isSuccess, convId) in
                        if isSuccess, let convId = convId {
                            let conversation = MeQuery.Data.Me.Conversation.UserConversation.Conversation.init(name: conversationName, id: convId)
                            let userConversasion = MeQuery.Data.Me.Conversation.UserConversation.init(conversation: conversation, user: nil, conversationId: convId, userId: meId)
                            showDetail(userConversation: userConversasion)
                        }
                    }
                }
            }
        } else if indexPath.section == 1 {
            if let userConversations = meData?.conversations?.userConversations {
                let userConversation = userConversations[indexPath.row]
                showDetail(userConversation: userConversation)
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
