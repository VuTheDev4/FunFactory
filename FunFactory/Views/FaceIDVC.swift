//
//  FaceIDVC.swift
//  FunFactory
//
//  Created by Vu Duong on 11/13/19.
//  Copyright © 2019 Vu Duong. All rights reserved.
//

import UIKit
import LocalAuthentication

class FaceIDVC: UIViewController {
    
    @IBOutlet weak var textLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func faceIdAction(_ sender: Any) {
        
        print("hello there!.. You have clicked the  FaceID")
            
            let myContext = LAContext()
            let myLocalizedReasonString = "Biometric Authntication testing !! "
            
            var authError: NSError?
            if #available(iOS 8.0, macOS 10.12.1, *) {
                if myContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
                    myContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: myLocalizedReasonString) { success, evaluateError in
                        
                        DispatchQueue.main.async {
                            if success {
                                // User authenticated successfully, take appropriate action
                                self.textLbl.text = "Awesome!!... User authenticated successfully"
                            } else {
                                // User did not authenticate successfully, look at error and take appropriate action
                                self.textLbl.text = "Sorry!!... User did not authenticate successfully"
                            }
                        }
                    }
                } else {
                    // Could not evaluate policy; look at authError and present an appropriate message to user
                    textLbl.text = "Sorry!!.. Could not evaluate policy."
                }
            } else {
                // Fallback on earlier versions
                
                textLbl.text = "Ooops!!.. This feature is not supported."
            }
            
            
        }
        
}
