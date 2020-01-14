//
//  MessageUtils.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/14/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import SwiftEntryKit

enum MessageType: String {
    case success = "SUCCESS"
    case failed = "ERROR"
    case warning = "WARNING"
}

final class MessageUtils {
    
    
    static func showMess(type: MessageType, string: String) {
        var attributes = EKAttributes()
        attributes.displayMode = .inferred
        attributes.positionConstraints = .fullWidth
        attributes.hapticFeedbackType = .success
        attributes.positionConstraints.safeArea = .empty(fillSafeArea: true)
        attributes.entryBackground = .visualEffect(style: .prominent)
        var color: EKColor
        switch type {
        case .success:
            color = EKColor(UIColor.green)
        case .failed:
            color = EKColor(UIColor.red)
        default:
            color = EKColor.init(UIColor(named: "title_color")!)
        }
        let title = EKProperty.LabelContent(
            text: type.rawValue,
            style: EKProperty.LabelStyle(
                font: .boldSystemFont(ofSize: 15),
                color: color)
        )
        let description = EKProperty.LabelContent(
            text: string,
            style: EKProperty.LabelStyle(
                font: .systemFont(ofSize: 12),
                color: EKColor.init(UIColor(named: "title_color")!)
            )
        )
        
        let simpleMessage = EKSimpleMessage(title: title, description: description)
        let notificationMessage = EKNotificationMessage(simpleMessage: simpleMessage)
        let contentView = EKNotificationMessageView(with: notificationMessage)
        SwiftEntryKit.display(entry: contentView, using: attributes)
    }
}
