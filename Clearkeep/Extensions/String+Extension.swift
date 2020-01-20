//
//  String+Extension.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/20/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func toTimeInterval() -> TimeInterval? {
        guard let doubleValue = Double(self) else {
            return nil
        }
        return TimeInterval(floatLiteral: doubleValue)
    }
    
    func timeIntervalStringToDate() -> Date? {
        guard let timeInter = self.toTimeInterval() else {
            return nil
        }
        return Date(timeIntervalSince1970: timeInter)
    }
    
    func timeIntervalStringToDateString(format: String? = nil) -> String? {
        guard let date = self.timeIntervalStringToDate() else {
            return nil
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
}
