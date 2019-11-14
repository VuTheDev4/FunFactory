//
//  VideoVC.swift
//  FunFactory
//
//  Created by Vu Duong on 11/12/19.
//  Copyright © 2019 Vu Duong. All rights reserved.
//

import UIKit
import AVKit

class VideoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func playBtnClicked(_ sender: Any) {
        
        let videoURL = URL(string:"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(url: videoURL! )
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
    
    }
    
}
}
