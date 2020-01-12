//
//  Session.swift
//  ChatQL
//
//  Created by Pham Hoa on 1/15/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import Foundation

class Session {
    static let shared = Session()
    
    var meData: MeQuery.Data.Me?
    
    var lastCredential: (String?, String?)? {
        get {
            let username = UserDefaults.standard.value(forKey: "username") as? String
            let password = UserDefaults.standard.value(forKey: "password") as? String
         
            if username != nil && password != nil {
                return (username!, password!)
            } else {
                return nil
            }
        }
        set {
            UserDefaults.standard.set(lastCredential?.0, forKey: "username")
            UserDefaults.standard.set(lastCredential?.1, forKey: "password")
            UserDefaults.standard.synchronize()
        }
    }
}
