//
//  SecondVC.swift
//  FunFactory
//
//  Created by Vu Duong on 11/9/19.
//  Copyright © 2019 Vu Duong. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    
    @IBOutlet weak var textLblSecondVC: UILabel!
    @IBOutlet weak var textFieldSecondVC: UITextField!
    
    var data = ""
    var delegate : delegateProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLblSecondVC.text = data
        
    }
    
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        delegate?.sendData(data: textFieldSecondVC.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    
}

protocol delegateProtocol {
    func sendData(data: String)
}
