
import UIKit
import AWSAppSync
import AWSCognitoIdentityProvider
import IQKeyboardManagerSwift
import AWSMobileClient
import Toast_Swift
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var appSyncClient: AWSAppSyncClient?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupAppSyncInitialization()
        setupIQKeyboardMananger()
        ToastManager.shared.isQueueEnabled = false
        ToastManager.shared.isTapToDismissEnabled = false
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIHostingController(rootView: SplashScreen())
        window?.makeKeyAndVisible()
        return true
    }
    
    func setupAppSyncInitialization() {
        do {
            // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()

            // AppSync configuration & client initialization
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig,
                                                                  userPoolsAuthProvider: self,
                                                                  cacheConfiguration: cacheConfiguration)
            self.appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            self.appSyncClient?.apolloClient?.cacheKeyForObject = { $0["id"] }

            print("Initialized appsync client.")
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
