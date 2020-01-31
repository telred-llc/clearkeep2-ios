
import Foundation
import UIKit
import SwiftUI
import AWSMobileClient
struct ProfileScreen: View {
    private let meData: GetUserQuery.Data.GetUser? = Session.shared.meData
    
    var body: some View {
        let firstCharacter = String(meData?.username.prefix(1) ?? "")
        return ScrollView {
            VStack {
                Spacer()
                ZStack {
                    Text(firstCharacter)
                        .font(.system(size: 30, weight: .bold))
                }
                .frame(minWidth: 100,minHeight: 100)
                .background(Color.blue)
                .clipShape(Circle())
                
                Text(meData?.username ?? "")
                    .font(.system(size: 30, weight: .bold))
                    .padding(.top, 16)

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationBarTitle(Text("Profile"), displayMode: .inline)
        .navigationBarItems(trailing:
            Text("Logout")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color.red)
                .onTapGesture {
                    self.logout()
            }
        )
        
    }
    
    private func logout() {
        Utils.showProgressHub()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            AWSMobileClient.default().signOut { (error) in
                Utils.hideProgressHub()
                if let error = error {
                    MessageUtils.showErrorMessage(error: error)
                } else {
                    Session.shared.logout()
                }
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
