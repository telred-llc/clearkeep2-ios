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

final class RegisterViewModel: ObservableObject {
    //MARK: - Properties
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var email: String = ""
    @Published var phoneModel: PhoneCodeModel?
    @Published var phone: String = ""
    @Published var phoneCodeDataSource: [PhoneCodeModel] = []
    
    //MARK: -Initialize
    init() {
        self.prepareData()
    }
    
    //MARK: -Public fucntion
    
    func register() {
        guard validate().0 else {
            //Todo: show mess
            return
        }
        registerToServer()
    }
    
    //MARK: - Private fucntion
    
    private func validate() -> (Bool, String?) {
        guard !username.isEmpty, !password.isEmpty, !email.isEmpty, !phone.isEmpty else {
            return (false, "Please input all field!")
        }
        return (true, nil)
    }
    
    private func registerToServer() {
        guard let phoneCode = phoneModel?.phoneCode else {
            return
        }
        let validPhone = "+\(phoneCode)\(phone)"
        AWSMobileClient.sharedInstance().signUp(username: username,
                                                password: password,
                                                userAttributes: ["email": "\(email)", "phone_number": "\(validPhone)"]) { [weak self] (signUpResult, error) in
                                                    guard let `self` = self else {
                                                        return
                                                    }
                                                    if let signUpResult = signUpResult {
//                                                        switch(signUpResult.signUpConfirmationState) {
//                                                        case .confirmed:
//                                                            self.showAlert(title: "", mess: "User is signed up and confirmed.", data: signUpResult)
//                                                        case .unconfirmed:
//                                                            self.showAlert(title: "Successed", mess: "A verification code has been sent via \(signUpResult.codeDeliveryDetails!.deliveryMedium) at \(signUpResult.codeDeliveryDetails!.destination!)", data: nil)
//                                                        case .unknown:
//                                                            self.showAlert(title: "Error", mess: "Somthing went wrong!", data: nil)
//                                                        }
                                                    } else if let error = error {
//                                                        self.showAlert(title: "Error", mess: nil, data: error)
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
