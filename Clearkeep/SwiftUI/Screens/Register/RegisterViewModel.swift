//
//  RegisterViewModel.swift
//  AWS-Ring
//
//  Created by Vu Vuong on 11/13/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import Foundation
import SwiftUI
import AWSCognitoIdentityProvider
import AWSMobileClient
import AWSAppSync
import SVProgressHUD

final class RegisterViewModel: ObservableObject {
    //MARK: - Properties
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var email: String = ""
    @Published var phoneModel: PhoneCodeModel?
    @Published var phone: String = ""
    @Published var phoneCodeDataSource: [PhoneCodeModel] = []
    @Published var isShowConfirm = false
    //MARK: -Initialize
    init() {
        self.prepareData()
    }
    
    //MARK: -Public fucntion
    
    func register() {
        guard validate() else {
            return
        }
        DispatchQueue.main.async {
            self.registerToServer()
        }
    }
    
    //MARK: - Private fucntion
    
    private func validate() -> Bool {
        guard !username.isEmpty, !password.isEmpty, !email.isEmpty, !phone.isEmpty else {
            MessageUtils.showMess(type: .failed, string: "Please input all field")
            return false
        }
        return true
    }
    
    private func registerToServer() {
        guard let phoneCode = phoneModel?.phoneCode else {
            return
        }
        SVProgressHUD.show()
        let validPhone = "+\(phoneCode)\(phone)"
        AWSMobileClient.default().signUp(username: username,
                                                password: password,
                                                userAttributes: ["email": "\(email)", "phone_number": "\(validPhone)"]) {(signUpResult, error) in
                                                    SVProgressHUD.dismiss()
                                                    if let signUpResult = signUpResult {
                                                        switch(signUpResult.signUpConfirmationState) {
                                                        case .confirmed:
                                                            MessageUtils.showMess(type: .success, string: "User is signed up and confirmed")
                                                            Switcher.updateRootVC(logined: true)
                                                        case .unconfirmed:
                                                            let mess = "A verification code has been sent via \(signUpResult.codeDeliveryDetails!.deliveryMedium) at \(signUpResult.codeDeliveryDetails!.destination!)"
                                                            MessageUtils.showMess(type: .success, string: mess)
                                                            DispatchQueue.main.async {
                                                                self.isShowConfirm = true
                                                            }
                                                        case .unknown:
                                                            MessageUtils.showMess(type: .failed, string: "Somthing went wrong!")
                                                        }
                                                    } else if let error = error {
                                                        MessageUtils.showErrorMessage(error: error)
                                                    }
        }
    }
    
    private func prepareData() {
        DispatchQueue.main.async {
            self.makeCountryDataSource()
            self.phoneModel = self.phoneCodeDataSource.first(where: {$0.countryCode.uppercased() == Locale.current.regionCode?.uppercased()})
        }
    }
    
    private func makeCountryDataSource() {
        let sortedPhoneCodesByName = Constant.countries.sorted { (left, right)   in
            return left.value[0] < right.value[0]
        }
        phoneCodeDataSource = sortedPhoneCodesByName.map { (key, value) -> PhoneCodeModel in
            return PhoneCodeModel(countryCode: key, countryName: value.first ?? "", phoneCode: value.last ?? "")
        }
    }
}
