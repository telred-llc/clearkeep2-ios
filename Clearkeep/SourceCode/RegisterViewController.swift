//
//  RegisterViewController.swift
//  Clearkeep
//
//  Created by Pham Hoa on 1/10/19.
//  Copyright © 2019 Pham Hoa. All rights reserved.
//

import UIKit
import AWSMobileClient
import DropDown

class RegisterViewController: BaseViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var choosePhoneCodeButton: UIButton!
    
    let choosePhoneCodeDropDown = DropDown.init()
    
    // 0: Country Code
    // 1: Country Name
    // 2: Phone Code
    var phoneCodeDataSource: [(String, String, String)] = []
    var selectedPhoneCode: (String, String, String)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPhoneCodeDataSource()
        setupPhoneCodeDataDropDown()
        setupUIViewController()
    }
    
    func createPhoneCodeDataSource() {
        let sortedPhoneCodesByName = Constant.countries.sorted { (left, right)   in
            return left.value[0] < right.value[0]
        }
        
        phoneCodeDataSource = sortedPhoneCodesByName.compactMap({ return ($0.key, $0.value[0], $0.value[1]) })
    }
    
    func setupPhoneCodeDataDropDown() {
        choosePhoneCodeDropDown.anchorView = choosePhoneCodeButton
        
        // By default, the dropdown will have its origin on the top left corner of its anchor view
        // So it will come over the anchor view and hide it completely
        // If you want to have the dropdown underneath your anchor view, you can do this:
        choosePhoneCodeDropDown.bottomOffset = CGPoint(x: 0, y: choosePhoneCodeButton.bounds.height)
        
        let dataSource = phoneCodeDataSource.map({
            return "(+\($0.2)) " + $0.1
        })
        
        if dataSource.count == 0 {
            return
        }
        
        choosePhoneCodeDropDown.dataSource = dataSource
        
        // Action triggered on selection
        choosePhoneCodeDropDown.selectionAction = { [weak self] (index, item) in
            self?.selectedPhoneCode = self?.phoneCodeDataSource[index]
            self?.choosePhoneCodeButton.setTitle(item, for: .normal)
        }
        
        // Select current country as default
        if let currentCountryIndex = phoneCodeDataSource.firstIndex(where: {
            $0.0 == Locale.current.regionCode
        }) {
            choosePhoneCodeDropDown.selectRow(currentCountryIndex)
            selectedPhoneCode = phoneCodeDataSource[currentCountryIndex]
            choosePhoneCodeButton.setTitle(dataSource[currentCountryIndex], for: .normal)
        } else {
            choosePhoneCodeDropDown.selectRow(0)
            selectedPhoneCode = phoneCodeDataSource[0]
            choosePhoneCodeButton.setTitle(dataSource[0], for: .normal)
        }
    }
    
    func setupUIViewController() {
        self.choosePhoneCodeButton.layer.cornerRadius = 4
        self.choosePhoneCodeButton.layer.borderColor = UIColor.lightGray.cgColor
        self.choosePhoneCodeButton.layer.borderWidth = 0.5
//        self.choosePhoneCodeButton.semanticContentAttribute = UIApplication.shared
//            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        
    }
    
    @IBAction func clickedOnChoosePhoneCodeButton(_ sender: Any) {
        choosePhoneCodeDropDown.show()
    }
    
    @IBAction func clickedOnRegisterButton(_ sender: Any) {
        self.view.endEditing(true)

        if !validate() {
            self.showAlert(title: "Missing information", msg: "Please enter required fields")
            return
        }
        
        var validPhone = phoneTextField.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        validPhone = "+" + "\(selectedPhoneCode.2)" + validPhone.replacingOccurrences(of: "+", with: "")
        
        self.showProgressHub()
        AWSMobileClient.default().signUp(username: usernameTextField.text!,
                                                password: passwordTextField.text!,
                                                userAttributes: ["email": "\(emailTextField.text!)", "phone_number": "\(validPhone)"]) { (signUpResult, error) in
                                                    
                                                    self.hideProgressHub()
                                                    
                                                    if let signUpResult = signUpResult {
                                                        switch(signUpResult.signUpConfirmationState) {
                                                        case .confirmed:
                                                            self.showAlert(title: nil, msg: "User is signed up and confirmed.", {
                                                                Switcher.updateRootVC(logined: false)
                                                            })
                                                        case .unconfirmed:
                                                            self.showAlert(title: "Successed", msg: "A verification code has been sent via \(signUpResult.codeDeliveryDetails!.deliveryMedium) at \(signUpResult.codeDeliveryDetails!.destination!)", {
                                                                self.showConfirmationVC()
                                                            })
                                                        case .unknown:
                                                            self.showAlert(title: nil, msg: "Somthing went wrong!")
                                                        }
                                                    } else if let error = error {
                                                        self.showErrorMessage(error: error)
                                                    }
        }
    }
    
    func validate() -> Bool {
        if (usernameTextField.text ?? "").count == 0 {
            return false
        }
        
        if (passwordTextField.text ?? "").count == 0 {
            return false
        }
        
        if (emailTextField.text ?? "").count == 0 {
            return false
        }
        
        if (phoneTextField.text ?? "").count == 0 {
            return false
        }
        
        return true
    }
    
    func showConfirmationVC() {
        let confirmVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ConfirmationViewController") as! ConfirmationViewController
        confirmVC.confirmType = .signup
        confirmVC.username = self.usernameTextField.text!
        self.navigationController?.pushViewController(confirmVC, animated: true)
    }
}
