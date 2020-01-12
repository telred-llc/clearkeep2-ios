//
//  AppDelegate.swift
//  ChatQL
//
//  Created by Pham Hoa on 1/10/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSAppSync
import AWSCognitoIdentityProvider
import IQKeyboardManagerSwift
import AWSMobileClient
import Toast_Swift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var appSyncClient: AWSAppSyncClient?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupAppSyncInitialization()
        setupIQKeyboardMananger()
        
        ToastManager.shared.isQueueEnabled = false
        ToastManager.shared.isTapToDismissEnabled = false

        return true
    }
    
    func setupAppSyncInitialization() {
        do {
            // initialize the AppSync client configuration configuration
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: AWSAppSyncServiceConfig(),
                                                                  cacheConfiguration: cacheConfiguration)
            // initialize app sync client
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)

            // set id as the cache key for objects
            appSyncClient?.apolloClient?.cacheKeyForObject = { $0["id"] }

            print("AppSyncClient initialized with cacheConfiguration: \(cacheConfiguration)")
        } catch {
            print("Error initializing appsync client. \(error)")
        }
        
        // State tracking
        AWSMobileClient.default().addUserStateListener(self) { (userState, info) in
            switch (userState) {
            case .signedIn:
                print("user is signed in.")
                print(info)
            default:
                Switcher.updateRootVC(logined: false)
            }
        }
    }
    
    func setupIQKeyboardMananger() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        IQKeyboardManager.shared.enableAutoToolbar = false
    }
}

extension AppDelegate: AWSCognitoUserPoolsAuthProviderAsync {
    func getLatestAuthToken(_ callback: @escaping (String?, Error?) -> Void) {
        AWSMobileClient.default().getTokens { (tokens, error) in
            if error != nil {
                callback(nil, error)
            } else {
                callback(tokens?.idToken?.tokenString, nil)
            }
        }
    }
}

extension AppDelegate: AWSAppSyncOfflineMutationDelegate {
    func mutationCallback(recordIdentifier: String, operationString: String, snapshot: Snapshot?, error: Error?) {
        
    }
}

extension AppDelegate: UISplitViewControllerDelegate {
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
}
