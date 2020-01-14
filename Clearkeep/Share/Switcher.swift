//
//  Switcher.swift
//  Clearkeep
//
//  Created by Pham Hoa on 1/10/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import SwiftUI

class Switcher {
    static func updateRootVC(logined: Bool) {
        var rootVC : UIViewController?
        
        if logined {
            rootVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SplitViewController")
        }
        else {
            rootVC = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController")
        }
        
        DispatchQueue.main.async {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            if rootVC?.isKind(of: UISplitViewController.self) == true  {
                (rootVC as! UISplitViewController).delegate = appDelegate
                appDelegate.window?.rootViewController = rootVC
            } else if rootVC?.isKind(of: UINavigationController.self) == true {
                appDelegate.window?.rootViewController = rootVC
            } else {
                appDelegate.window?.rootViewController = UINavigationController.init(rootViewController: rootVC!)
            }
            appDelegate.window?.makeKeyAndVisible()
        }
    }
    
    static func changeRootView(view: UIViewController) {
        //TODO: handle login here
         let keyWindow = UIApplication.shared.connectedScenes
         .filter({$0.activationState == .foregroundActive})
         .map({$0 as? UIWindowScene})
         .compactMap({$0})
         .first?.windows
         .filter({$0.isKeyWindow}).first
         keyWindow?.rootViewController = view
    }
    
}
