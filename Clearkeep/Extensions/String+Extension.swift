
import Foundation
import UIKit

extension String {
    
    func changeDateFormat(fromFormat: String, toFormat: String) -> String? {
        let inputDateFormatter = DateFormatter()
        inputDateFormatter.dateFormat = fromFormat
        guard let date = inputDateFormatter.date(from: self) else {
            return "N/A"
        }
        
        let outputDateFormatter = DateFormatter()
        outputDateFormatter.dateFormat = toFormat
        return outputDateFormatter.string(from: date)
    }
    
    func getTimeConversation() -> String {
        let mess = self.changeDateFormat(fromFormat: Constant.globalDateFormat, toFormat: "yyyy/MM/dd hh:mm a")
        guard let messUnwrap = mess else {
            return "N/A"
        }
        return messUnwrap
    }
    
    func getTimeMessage() -> String {
        let mess = self.changeDateFormat(fromFormat: Constant.globalDateFormat, toFormat: "hh:mm a")
        guard let messUnwrap = mess else {
            return "N/A"
        }
        return messUnwrap
    }
    
    func toDate() -> Date? {
        let format = DateFormatter()
        format.dateFormat = Constant.globalDateFormat
        let date = format.date(from: self)
        guard let dateUnwrap = date else {
            return nil
        }
        return dateUnwrap
    }
}
