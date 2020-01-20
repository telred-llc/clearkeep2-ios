//
//  Date+Extension.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/20/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import UIKit

extension Date {
    func getDateStringFrom(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let dateString = dateFormatter.string(from: self)
        return dateString
    }
}
