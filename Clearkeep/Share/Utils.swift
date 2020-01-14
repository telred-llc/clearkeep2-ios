//
//  Utils.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/14/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import AWSAppSync
import AWSMobileClient

class Utils {
    
    static func getAppSync() -> AWSAppSyncClient? {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.appSyncClient
    }
}
