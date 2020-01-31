

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
