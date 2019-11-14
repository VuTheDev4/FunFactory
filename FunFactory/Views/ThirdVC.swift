//
//  ThirdVC.swift
//  FunFactory
//
//  Created by Vu Duong on 11/11/19.
//  Copyright © 2019 Vu Duong. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var headers = ["Numbers","Family","Random Stuff"]
    var myCollectionArray = [["1","2","3","4","5","6","7","8","9","10"],["Vu","Debbie","Taylor","Jordyn"],["Hello","World!"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myCollectionArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCollectionArray[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myCollectionArray[indexPath.section][indexPath.row]
        return cell
    }
    
}
