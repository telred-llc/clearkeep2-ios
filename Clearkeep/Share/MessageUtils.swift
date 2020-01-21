//
//  MessageUtils.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/14/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import SwiftEntryKit
import AWSMobileClient
import AWSAppSync

enum MessageType: String {
    case success = "SUCCESS"
    case failed = "ERROR"
    case warning = "WARNING"
}

final class MessageUtils {
    
    
    static func showMess(type: MessageType, string: String) {
        DispatchQueue.main.async {
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
    
    static func showErrorMessage(error: Error) {
        let mess = MessageUtils.getMessage(error: error)
        MessageUtils.showMess(type: .failed, string: mess)
    }
    
    static func getMessage(error: Error?) -> String {
        var errorMessage = ""
        if let error = error {
            if let error = error as? AWSMobileClientError {
                
                switch error {
                case .aliasExists(let message):
                    errorMessage = message
                case .codeDeliveryFailure(let message):
                    errorMessage = message
                case .codeMismatch(let message):
                    errorMessage = message
                case .expiredCode(let message):
                    errorMessage = message
                case .groupExists(let message):
                    errorMessage = message
                case .internalError(let message):
                    errorMessage = message
                case .invalidLambdaResponse(let message):
                    errorMessage = message
                case .invalidOAuthFlow(let message):
                    errorMessage = message
                case .invalidParameter(let message):
                    errorMessage = message
                case .invalidPassword(let message):
                    errorMessage = message
                case .invalidUserPoolConfiguration(let message):
                    errorMessage = message
                case .limitExceeded(let message):
                    errorMessage = message
                case .mfaMethodNotFound(let message):
                    errorMessage = message
                case .notAuthorized(let message):
                    errorMessage = message
                case .passwordResetRequired(let message):
                    errorMessage = message
                case .resourceNotFound(let message):
                    errorMessage = message
                case .scopeDoesNotExist(let message):
                    errorMessage = message
                case .softwareTokenMFANotFound(let message):
                    errorMessage = message
                case .tooManyFailedAttempts(let message):
                    errorMessage = message
                case .tooManyRequests(let message):
                    errorMessage = message
                case .unexpectedLambda(let message):
                    errorMessage = message
                case .userLambdaValidation(let message):
                    errorMessage = message
                case .userNotConfirmed(let message):
                    errorMessage = message
                case .userNotFound(let message):
                    errorMessage = message
                case .usernameExists(let message):
                    errorMessage = message
                case .unknown(let message):
                    errorMessage = message
                case .notSignedIn(let message):
                    errorMessage = message
                case .identityIdUnavailable(let message):
                    errorMessage = message
                case .guestAccessNotAllowed(let message):
                    errorMessage = message
                case .federationProviderExists(let message):
                    errorMessage = message
                case .cognitoIdentityPoolNotConfigured(let message):
                    errorMessage = message
                case .unableToSignIn(let message):
                    errorMessage = message
                case .invalidState(let message):
                    errorMessage = message
                case .userPoolNotConfigured(let message):
                    errorMessage = message
                case .userCancelledSignIn(let message):
                    errorMessage = message
                case .badRequest(let message):
                    errorMessage = message
                case .expiredRefreshToken(let message):
                    errorMessage = message
                case .errorLoadingPage(let message):
                    errorMessage = message
                case .securityFailed(let message):
                    errorMessage = message
                case .idTokenNotIssued(let message):
                    errorMessage = message
                case .idTokenAndAcceessTokenNotIssued(let message):
                    errorMessage = message
                case .invalidConfiguration(let message):
                    errorMessage = message
                case .deviceNotRemembered(let message):
                    errorMessage = message
                }
            } else if let appSyncError = error as? AWSAppSyncClientError {
                switch appSyncError {
                case .requestFailed(_ , let response, _):
                    if response?.statusCode == 401 {
                        errorMessage = "Token expired!"
                    }
                default:
                    break
                }
            }
            else {
                errorMessage = error.localizedDescription
            }
        }
        return errorMessage
    }
}
