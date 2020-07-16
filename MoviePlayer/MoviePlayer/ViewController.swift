//
//  ViewController.swift
//  MoviePlayer
//
//  Created by 서정 on 2020/07/15.
//  Copyright © 2020 서정. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func playVideo(url: NSURL){
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController,animated: true){
            player.play()
        }
    }
    
    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        let filePath: String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        playVideo(url: url)
    }
    
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4")!
        
        playVideo(url: url)
    }
    
}

