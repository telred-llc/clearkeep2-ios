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

    func toDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = Constant.globalDateFormat
        return dateFormatter.date(from: self)
    }
    
    func convertDateFormater(to format: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        guard let date = self.toDate() else {
            return "19:00 PM"
        }
        return  dateFormatter.string(from: date)
        
    }
    
    func getTimeMessage() -> String? {
        guard let messTime = self.toDate() else {
            return nil
        }
        return "19:00 AM"
    }
}
