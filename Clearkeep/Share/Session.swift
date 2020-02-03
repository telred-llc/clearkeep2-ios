import Foundation

class Session {
    static let shared = Session()
    
    var lastConvLink: CreateConvoLinkMutation.Data.CreateConvoLink?
    var meData: GetUserQuery.Data.GetUser?
    var users: [UserModel]?
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
            UserDefaults.standard.set(newValue?.0, forKey: "username")
            UserDefaults.standard.set(newValue?.1, forKey: "password")
            UserDefaults.standard.synchronize()
        }
    }
    
    func logout() {
        Session.shared.meData = nil
        Session.shared.lastCredential = nil
    }
}
