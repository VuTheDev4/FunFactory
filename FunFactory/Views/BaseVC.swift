//
//  BaseVC.swift
//  FunFactory
//
//  Created by Vu Duong on 11/11/19.
//  Copyright © 2019 Vu Duong. All rights reserved.
//

import UIKit
import LocalAuthentication

class BaseVC: UIViewController {
    
    let myContext = LAContext()
    let myLocalizedReasonString = "Biometric Authntication testing !! "
    var authError: NSError?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authenticateWithFaceID()
    }
    
    
    func authenticateWithFaceID() {
        
        var authError: NSError?
        if #available(iOS 8.0, macOS 10.12.1, *) {
            if myContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
                myContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: myLocalizedReasonString) { success, evaluateError in
                    
                    DispatchQueue.main.async {
                        if success {
                            // User authenticated successfully, take appropriate action
                            print("Awesome!!... User authenticated successfully")
                        } else {
                            // User did not authenticate successfully, look at error and take appropriate action
                            print("Sorry!!... User did not authenticate successfully")
                        }
                    }
                }
            } else {
                // Could not evaluate policy; look at authError and present an appropriate message to user
                print("Sorry!!.. Could not evaluate policy.")
            }
        } else {
            // Fallback on earlier versions
            
            print("Ooops!!.. This feature is not supported.")
        }
    }
}
