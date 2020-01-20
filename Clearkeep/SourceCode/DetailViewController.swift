//
//  DetailViewController.swift
//  Clearkeep
//
//  Created by Pham Hoa on 1/14/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSAppSync
import PromiseKit
import Material
import CRRefresh

class DetailViewController: BaseViewController {

    @IBOutlet weak var messagesTableView: UITableView!
    @IBOutlet weak var inputTextView: TextView!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var containerInputView: UIView!
    @IBOutlet weak var bottomInputViewConstraint: NSLayoutConstraint!
    var conversationId = "" {
        didSet {
            
        }
    }
    var conversationName = "" {
        didSet {
            self.title = conversationName
        }
    }

    private var conversationData: GetConvoQuery.Data.GetConvo?
    private var meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    private var nextToken: String?
    private lazy var dateFormatter = DateFormatter.init()
    private let numberOfItemsPerPage: Int = 20
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInputView()
        setupTableView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(appDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = conversationName
        self.messagesTableView.reloadData()
        self.refreshData(conversationData?.messages?.items?.isEmpty != true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.view.endEditing(true)
    }
    
    @objc func appDidBecomeActive() {
        self.refreshData(false)
    }
    
    func refreshData(_ animated: Bool = true) {
        if self.conversationId.count == 0 {
            //
        } else {
            firstly { () -> PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> in
                if animated {
                    self.showProgressHub()
                }
                return self.fetchConversation(conversationId: self.conversationId)
                }.done({ (conversation) in
                    self.conversationData = conversation
                    let messages = conversation?.messages?.items?.compactMap({ return $0 }) ?? []
                    let sortedMessages = self.sort(messages: messages)
                    self.conversationData?.messages?.items = sortedMessages
                }).ensure {
                    self.messagesTableView.reloadData()
                    if animated {
                        self.hideProgressHub()
                        self.srollToLatestMessage()
                    }
                }.catch { (error) in
                    self.showAlert(title: "Can't reload data at this time", msg: "Please try again", buttons: ["Retry", "Cancel"], { (index) in
                        if index == 0 {
                            self.refreshData()
                        } else if index == 1 {
                            // clear data
                            self.conversationId = ""
                            self.conversationName = ""
                            self.navigationController?.popViewController(animated: true)
                        }
                    })
            }
        }
    }
    
    func clearData() {
        self.conversationData?.messages?.items?.removeAll()
        self.messagesTableView.reloadData()
    }
    
    func fetchConversation(conversationId: String) -> PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> {
        return PromiseKit.Promise<GetConvoQuery.Data.GetConvo?> { (resolver) in
            let query = GetConvoQuery.init(id: conversationId)
            appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.fetchIgnoringCacheData, resultHandler: { (result, error) in
                if let error = error {
                    resolver.reject(error)
                } else {
                    resolver.fulfill(result?.data?.getConvo)
                }
            })
        }
    }

    func sendMessage(content: String, conversationId: String) {
        
        if content.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).count == 0 {
            return
        }
        
        let date = Date.init()
        dateFormatter.dateFormat = Constant.globalDateFormat
//        let createdAt = dateFormatter.string(from: date)
//        let id = createdAt + "_" + UUID().uuidString
//id: id, authorId: meData?.id, content: content, messageConversationId: conversationId, createdAt: createdAt, updatedAt: nil
//        let tempMessage = GetConvoQuery.Data.GetConvo.Message.Item(id: id, author: , authorId: meData?.id, content: content, conversation: <#T##GetConvoQuery.Data.GetConvo.Message.Item.Conversation#>, messageConversationId: conversationId, createdAt: createdAt, updatedAt: nil)
//        self.addNewMessage(message: tempMessage)
//        self.inputTextView.text = ""

//        let createMessageMutaion = CreateMessageMutation.init(input: CreateMessageInput.init(id: id, authorId: meData?.id, content: content, messageConversationId: conversationId, createdAt: createdAt, updatedAt: nil))
//        appSyncClient?.perform(mutation: createMessageMutaion, resultHandler: { (result, error) in
//            if let result = result {
//                if let snapshot = result.data?.createMessage?.snapshot {
//                    self.addNewMessage(message: GetConvoQuery.Data.GetConvo.Message.Item.init(snapshot: snapshot))
//                }
//            } else {
//                self.showToast(message: "Can't send the message")
//            }
//        })
    }
    
    func addNewMessage(message: GetConvoQuery.Data.GetConvo.Message.Item) {
        if let indexOfExistingMessage = self.conversationData?.messages?.items?.index(where: { $0?.id == message.id }) {
            self.conversationData?.messages?.items?[indexOfExistingMessage] = message
            self.messagesTableView?.reloadRows(at: [IndexPath.init(row: indexOfExistingMessage, section: 0)], with: .none)
        } else {
            self.conversationData?.messages?.items?.append(message)
            var lastRow = (self.conversationData?.messages?.items?.count ?? 0) - 1
            lastRow = lastRow >= 0 ? lastRow : 0
            let lastIndexPath = IndexPath.init(row: lastRow, section: 0)
            self.messagesTableView?.beginUpdates()
            self.messagesTableView?.insertRows(at: [lastIndexPath], with: .automatic)
            self.messagesTableView?.endUpdates()
            self.messagesTableView?.scrollToRow(at: lastIndexPath, at: .bottom, animated: true)
        }
    }
    
    func srollToLatestMessage() {
        if let messagesCount = self.conversationData?.messages?.items?.count, messagesCount > 0 {
            self.messagesTableView?.scrollToRow(at: IndexPath.init(row: messagesCount - 1, section: 0), at: .bottom, animated: true)
        }
    }
    
    // MARK: Setup Input View
    func setupInputView() {
        // setup TextView
        inputTextView.placeholder = "Type a Message"
        inputTextView.textContainerInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        inputTextView.backgroundColor = .white
        inputTextView.layer.cornerRadius = 4
        inputTextView.autocorrectionType = .no
        // setup Container View Input
        containerInputView.layer.borderColor = Color.darkText.dividers.cgColor
        containerInputView.layer.borderWidth = 1
        containerInputView.layer.backgroundColor = Color.darkText.dividers.cgColor
        
        // setup send button
        sendButton.layer.cornerRadius = 4
        sendButton.layer.backgroundColor = Color.darkText.secondary.cgColor
        sendButton.tintColor = .white
        sendButton.setTitle("Send", for: .normal)
        sendButton.setImage(UIImage(named: "ic-message"), for: .normal)
        sendButton.addTarget(self, action: #selector(sendNewMessage), for: .touchUpInside)
        sendButton.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        
        // handle KeyBoard show/hidden
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillhidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    // MARK: - Setup TabelView
    func setupTableView() {
        messagesTableView.delegate = self
        messagesTableView.dataSource = self
        messagesTableView.register(UINib(nibName: "SenderTextMessageCell", bundle: nil), forCellReuseIdentifier: "SenderTextMessageCell")
        messagesTableView.register(UINib(nibName: "ReceiverTextMessageCell", bundle: nil), forCellReuseIdentifier: "ReceiverTextMessageCell")
        
        let header = NormalHeaderAnimator()
        header.pullToRefreshDescription = "Pull down to load more"
        header.releaseToRefreshDescription = "Release to load more"
        
        messagesTableView.cr.addHeadRefresh(animator: header, handler: {
            self.loadMoreMessage({
                self.messagesTableView.cr.endHeaderRefresh()
            })
        })
    }
    
    func loadMoreMessage(_ completion: (() -> Void)?) {
        if let nextToken = self.nextToken {
            completion?()

//            firstly { () -> PromiseKit.Promise<[GetConvoQuery.Data.GetConvo.Message.Item]?> in
//                return self.fetchAllMessageConnection(conversationId: self.conversationId, nextToken: nextToken)
//                }.done({ (allMessageConnection) in
//                    var messages = allMessageConnection?.messages?.compactMap({ return $0 }) ?? []
//                    self.nextToken = allMessageConnection?.nextToken
//
//                    messages = self.sort(messages: messages).reversed()
//                    for message in messages {
//                        self.messagesTableView.beginUpdates()
//                        self.messages.insert(message, at: 0)
//                        self.messagesTableView.insertRows(at: [IndexPath.init(row: 0, section: 0)], with: .none)
//                        self.messagesTableView.endUpdates()
//                    }
//                }).ensure {
//                    completion?()
//                }.catch { (error) in
//                    print(error)
//            }
        } else {
            completion?()
        }
    }
    
    func sort(messages: [GetConvoQuery.Data.GetConvo.Message.Item]) -> [GetConvoQuery.Data.GetConvo.Message.Item] {
        let sortedMessages = messages.sorted(by: { (left, right) -> Bool in
            if left.createdAt != nil && right.createdAt != nil {
                
                // As createdAt fortmat from Webclient is "fullDate_id"
                let validLeftCreatedAt = left.createdAt!.components(separatedBy: "_")[0]
                let validRightCreatedAt = right.createdAt!.components(separatedBy: "_")[0]
                
                self.dateFormatter.dateFormat = Constant.globalDateFormat
                if let leftDate = self.dateFormatter.date(from: validLeftCreatedAt),
                    let rightDate = self.dateFormatter.date(from: validRightCreatedAt) {
                    if leftDate.compare(rightDate) == ComparisonResult.orderedAscending {
                        return true
                    }
                }
            }
            return false
        })

        return sortedMessages
    }
    
    // MARK: - Send Action
    @objc func sendNewMessage() {
        if inputTextView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return
        }
        self.sendMessage(content: inputTextView.text.trimmingCharacters(in: .whitespacesAndNewlines), conversationId: self.conversationId)
    }
    
    @objc func keyBoardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            UIView.animate(withDuration: 0.3) {
                if #available(iOS 11.0, *) {
                    let window = UIApplication.shared.keyWindow
                    self.bottomInputViewConstraint.constant = -keyboardSize.height + (window?.safeAreaInsets.bottom ?? 0)
                } else {
                    self.bottomInputViewConstraint.constant = -keyboardSize.height
                }
                self.view.layoutIfNeeded()
            }
        }
    }
    
    @objc func keyBoardWillhidden(notification: NSNotification) {
        UIView.animate(withDuration: 0.3) {
            self.bottomInputViewConstraint.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    func showSheet() {
        let alert = UIAlertController(title: "", message: "Choose Action", preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
            
        }
        
        let copy = UIAlertAction(title: "Copy", style: .default) { (alert) in
            
        }
        alert.addAction(cancel)
        alert.addAction(copy)
        self.present(alert, animated: true) {
            
        }
    }
}

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversationData?.messages?.items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let message = self.conversationData?.messages?.items?[indexPath.row] {
            if meData?.id == message.authorId {
                let cell = tableViewSenderTextMessage(tableView, cellForRowAt: indexPath, with: message)
                return cell
            } else {
                let cell = tableViewReceiverTextMessage(tableView, cellForRowAt: indexPath, with: message)
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableViewSenderTextMessage(_ tableView: UITableView, cellForRowAt indexPath: IndexPath, with item: GetConvoQuery.Data.GetConvo.Message.Item) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SenderTextMessageCell", for: indexPath) as? NodeTextMessageCell else {
            return UITableViewCell()
        }
        cell.setUI(form: item, indexPath: indexPath)
        cell.containerView.layer.backgroundColor = UIColor.white.cgColor
        cell.longPressCompletion = { indexPath in
            self.showSheet()
        }
        return cell
    }
    
    func tableViewReceiverTextMessage(_ tableView: UITableView, cellForRowAt indexPath: IndexPath, with item: GetConvoQuery.Data.GetConvo.Message.Item) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReceiverTextMessageCell", for: indexPath) as? NodeTextMessageCell else {
            return UITableViewCell()
        }
        cell.setUI(form: item, indexPath: indexPath)
        cell.containerView.layer.backgroundColor = UIColor.lightGray.cgColor.copy(alpha: 0.7)
        cell.longPressCompletion = { indexPath in
            self.showSheet()
        }
        return cell
    }
}

extension DetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNonzeroMagnitude
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            if let cell = cell as? NodeTextMessageCell {
                let message = self.conversationData?.messages?.items?[indexPath.row]
                if self.meData?.id == message?.authorId {
                    var path = UIBezierPath()
                    path = UIBezierPath(roundedRect: cell.containerView.bounds, byRoundingCorners: [.topLeft, .topRight, .bottomLeft], cornerRadii: CGSize(width: 16, height: 8))
                    let mask = CAShapeLayer()
                    mask.path = path.cgPath
                    cell.containerView.layer.mask = mask
                } else {
                    let path = UIBezierPath(roundedRect: cell.containerView.bounds, byRoundingCorners: [.topRight, .bottomLeft, .bottomRight], cornerRadii: CGSize(width: 16, height: 8))
                    let mask = CAShapeLayer()
                    mask.path = path.cgPath
                    cell.containerView.layer.mask = mask
                }
            }
        }
    }
}
