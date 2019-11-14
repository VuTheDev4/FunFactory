//
//  PictureCell.swift
//  FunFactory
//
//  Created by Vu Duong on 11/12/19.
//  Copyright © 2019 Vu Duong. All rights reserved.
//

import UIKit

class PictureCell: UITableViewCell {

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var pictureTitleLabel: UILabel!
    
    func setPicture(picture: Picture) {
        pictureImageView.image = picture.image
        pictureTitleLabel.text = picture.title
    }
    
}
