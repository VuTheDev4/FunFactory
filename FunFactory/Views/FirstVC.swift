//
//  FirstVC.swift
//  FunFactory
//
//  Created by Vu Duong on 11/9/19.
//  Copyright © 2019 Vu Duong. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLblFirstVC: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func arrowClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let secondVC = segue.destination as? SecondVC
            secondVC?.data = textField.text!
            secondVC?.delegate = self
        }
    }
   
}

extension FirstVC: delegateProtocol {
    func sendData(data: String) {
        textLblFirstVC.text = data
    }
    
    
}

