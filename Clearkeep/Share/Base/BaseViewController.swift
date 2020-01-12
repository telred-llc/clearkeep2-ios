//
//  BaseViewController.swift
//  ChatQL
//
//  Created by Pham Hoa on 1/10/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSAppSync
import Toast_Swift
import NVActivityIndicatorView
import AWSMobileClient

class BaseViewController: UIViewController {

    //Reference AppSync client
    var appSyncClient: AWSAppSyncClient?

    deinit {
        print("deinit \(self.description)")
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Reference AppSync client from App Delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
    }
    
    func setNaivigation(title: String) {
        let label: UILabel = UILabel.init()
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.text = title
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.sizeToFit()
        self.navigationItem.titleView = label
    }
    
    func setupLeftMenu(title: String) {
        let leftButton: UIBarButtonItem = UIBarButtonItem.init(title: title, style: .plain, target: self, action: #selector(buttonLeftTapped))
        self.navigationItem.leftBarButtonItem = leftButton;
    }
    
    func setupRightMenu(title: String) {
        let rightButton: UIBarButtonItem = UIBarButtonItem.init(title: title, style: .plain, target: self, action: #selector(buttonRightTapped))
        self.navigationItem.rightBarButtonItem = rightButton;
    }

    @objc func buttonLeftTapped() {
        
    }
    
    @objc func buttonRightTapped() {
        
    }
}

extension BaseViewController {
    func showAlert(title: String?, msg: String,_ dismissCompletion: (() -> Void)? = nil) {
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: title,
                                                    message: msg,
                                                    preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default) { action in
                alertController.dismiss(animated: false, completion: nil)
                dismissCompletion?()
            }
            alertController.addAction(okAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func showAlert(title: String?, msg: String, buttons: [String],_ dismissCompletion: ((Int) -> Void)? = nil) {
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: title,
                                                    message: msg,
                                                    preferredStyle: .alert)
            
            for (index, btnTitle) in buttons.enumerated() {
                let okAction = UIAlertAction(title: btnTitle, style: .default) { action in
                    alertController.dismiss(animated: false, completion: nil)
                    dismissCompletion?(index)
                }
                alertController.addAction(okAction)
            }
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func showProgressHub(_ message: String? = nil) {
        DispatchQueue.main.async {
            // stop
            NVActivityIndicatorPresenter.sharedInstance.stopAnimating(nil)
            
            // start
            let activityData = ActivityData(size: CGSize.init(width: 60, height: 60),
                                            message: message,
                                            messageFont: nil,
                                            type: NVActivityIndicatorType.ballSpinFadeLoader,
                                            color: .white,
                                            padding: 5,
                                            displayTimeThreshold: nil,
                                            minimumDisplayTime: nil,
                                            backgroundColor: nil,
                                            textColor: nil)
            NVActivityIndicatorPresenter.sharedInstance.startAnimating(activityData, nil)
        }
    }
    
    func hideProgressHub() {
        DispatchQueue.main.async {
            NVActivityIndicatorPresenter.sharedInstance.stopAnimating(nil)
        }
    }
    
    func showToast(message: String) {
        DispatchQueue.main.async {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window?.makeToast(message, duration: 4, position: .bottom, completion: nil)
        }
    }
    
    func showErrorMessage(error: Error,_ dismissCompletion: (() -> Void)? = nil) {
        if let error = error as? AWSMobileClientError {
            var errorMessage = ""
            
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
            self.showAlert(title: "Error", msg: errorMessage, dismissCompletion)
        } else if let error = error as? AWSAppSyncClientError {
            switch error {
            case .authenticationError(_):
                self.showAlert(title: "Error", msg: error.localizedDescription, {
                    Switcher.updateRootVC(logined: false)
                })
            default:
                self.showAlert(title: "Error", msg: error.localizedDescription, dismissCompletion)
            }
        } else if let error = error as? CQLError {
            self.showAlert(title: "Error", msg: error.localizedDescription, dismissCompletion)
        } else {
            self.showAlert(title: "Error", msg: error.localizedDescription, dismissCompletion)
        }
    }
}
