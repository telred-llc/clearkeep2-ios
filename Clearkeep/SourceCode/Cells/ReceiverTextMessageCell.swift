//
//  ReceiverTextMessageCell.swift
//  ChatQLDemo
//
//  Created by Dat Nguyen on 1/16/19.
//  Copyright © 2019 Dat Nguyen. All rights reserved.
//

import UIKit
import Material
class NodeTextMessageCell: BaseTableViewCell {

    // MARK: - IB Outlet
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeSendLabel: UILabel!
    @IBOutlet weak var statusIcon: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    private func setupUI() {
        self.backgroundColor = .clear
        nameLabel.textColor = Color.darkText.secondary
        nameLabel.font = RobotoFont.regular(with: 12)
        timeSendLabel.textColor = Color.darkText.dividers
        timeSendLabel.font = UIFont.systemFont(ofSize: 12)
    }
    
    func setUI(form data: AllMessageConnectionQuery.Data.AllMessageConnection.Message?, indexPath: IndexPath) {
        self.indexPath = indexPath
        
        self.nameLabel.text = nil
        if let createdAt = data?.createdAt {
            let dateFormatter = DateFormatter.init()
            dateFormatter.dateFormat = Constant.globalDateFormat
            if let date = dateFormatter.date(from: createdAt) {
                dateFormatter.dateFormat = "MMM dd hh:mm a"
                self.nameLabel.text = dateFormatter.string(from: date)
            }
        }
        self.statusIcon.image = UIImage(named: data?.isSent ?? false ? "ic-receiver" : "ic-sent")
        self.contentLabel.text = data?.content
        self.timeSendLabel.text = nil
    }
}
