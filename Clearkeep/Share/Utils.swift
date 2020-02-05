

import Foundation
import AWSAppSync
import AWSMobileClient
import NVActivityIndicatorView
import SwiftUI

class Utils {
    static var appSyncClient: AWSAppSyncClient? {
        get {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            return appDelegate.appSyncClient
        }
    }
    
    static func showProgressHub(_ message: String? = nil) {
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
    
    static func hideProgressHub() {
        DispatchQueue.main.async {
            NVActivityIndicatorPresenter.sharedInstance.stopAnimating(nil)
        }
    }
    
    static func showAlert(view: AnyView) {
        //        viewHosting.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Utils.dissmissAlert)))
        let viewHosting = UIHostingController(rootView: view)
        viewHosting.view.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        viewHosting.modalTransitionStyle = .crossDissolve
        viewHosting.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        UIApplication.shared.windows.first?.rootViewController?.present(viewHosting, animated: true)
    }
    
    @objc static func dismissAlert() {
        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
}
