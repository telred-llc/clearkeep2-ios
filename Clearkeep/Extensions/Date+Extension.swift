
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
