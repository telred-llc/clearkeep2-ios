//
//  SenderTextMessageCell.swift
//  ChatQLDemo
//
//  Created by Dat Nguyen on 1/16/19.
//  Copyright © 2019 Dat Nguyen. All rights reserved.
//

import UIKit
import Material
class SenderTextMessageCell: BaseTableViewCell {

    // MARK: - IB Outlet
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeSendLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var statusIcon: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var errorButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    // MARK: - Setup UI
    
    private func setupUI() {
        
        self.backgroundColor = .clear
        nameLabel.textColor = Color.darkText.secondary
        nameLabel.font = RobotoFont.regular(with: 14)
        timeSendLabel.textColor = Color.darkText.dividers
        timeSendLabel.font = UIFont.systemFont(ofSize: 12)
    }
    
    func setUI(form data: AllMessageConnectionQuery.Data.AllMessageConnection.Message?, first: AllMessageConnectionQuery.Data.AllMessageConnection.Message??, indexPath: IndexPath) {
        self.indexPath = indexPath
        self.statusIcon.isHidden = false
        self.errorButton.isHidden = true
        self.indexPath = indexPath
        if first??.sender == data?.sender {
            self.nameLabel.text = ""
            self.statusIcon.image = nil
        } else {
            self.nameLabel.text = "\(data?.author?.username ?? "") \(data?.createdAt ?? "")"
            self.statusIcon.image = UIImage(named: data?.isSent ?? false ? "ic-receiver":"ic-sent")
        }
        self.contentLabel.text = data?.content
        self.timeSendLabel.text = ""
        containerView.layer.backgroundColor = UIColor.lightGray.cgColor.copy(alpha: 0.7)
        self.contentLabel.text = data?.content
        self.timeSendLabel.text = ""
        self.layoutIfNeeded()
    }
}
