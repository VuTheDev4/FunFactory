//
//  TableViewPlusVC.swift
//  FunFactory
//
//  Created by Vu Duong on 11/12/19.
//  Copyright © 2019 Vu Duong. All rights reserved.
//

import UIKit

class TableViewPlusVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var pictures: [Picture] = []
    
    @IBOutlet weak var theTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theTableView.delegate = self
        theTableView.dataSource = self
        pictures = createArray()

    }
    
    func createArray() -> [Picture] {
        
        let picture1 = Picture(image: #imageLiteral(resourceName: "Girls"), title: "The Girls")
        let picture2 = Picture(image: #imageLiteral(resourceName: "DirtRoad"), title: "Dirt Road")
        let picture3 = Picture(image: #imageLiteral(resourceName: "DarkKnight"), title: "DarkKnight")
        let picture4 = Picture(image: #imageLiteral(resourceName: "LightsGlobe"), title: "Globe Lights")
        let picture5 = Picture(image: #imageLiteral(resourceName: "Wall"), title: "Wall")
        let picture6 = Picture(image: #imageLiteral(resourceName: "Lake"), title: "Lake")
        let picture7 = Picture(image: #imageLiteral(resourceName: "Leaf"), title: "Leaf")
        let picture8 = Picture(image: #imageLiteral(resourceName: "Flowers"), title: "Flowers")
    
        return [picture1,picture2,picture3,picture4,picture5,picture6,picture7,picture8]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let picture = pictures[indexPath.row]
        let cell = theTableView.dequeueReusableCell(withIdentifier: "PictureCell") as! PictureCell
        cell.setPicture(picture: picture)
        return cell
    }
    

}

