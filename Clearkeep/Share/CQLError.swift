//
//  CQLError.swift
//  ChatQL
//
//  Created by Pham Hoa on 1/17/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import Foundation

enum CQLError: Error {
    case unknownError
    
    var localizedDescription: String {
        get {
            switch self {
            case .unknownError:
                return "Something went wrong!"
            }
        }
    }
}
