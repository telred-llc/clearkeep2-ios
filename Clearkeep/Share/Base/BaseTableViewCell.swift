//
//  BaseTableViewCell.swift
//  ClearkeepDemo
//
//  Created by Dat Nguyen on 1/16/19.
//  Copyright © 2019 Dat Nguyen. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    var indexPath: IndexPath!
    open var longPressCompletion: ((IndexPath) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPressGesture))
        longPress.minimumPressDuration = 1
        self.addGestureRecognizer(longPress)
    }

    @objc func handleLongPressGesture() {
        longPressCompletion?(indexPath)
    }
    
}
