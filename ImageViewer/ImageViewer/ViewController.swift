//
//  ViewController.swift
//  ImageViewer
//
//  Created by 서정 on 2020/06/29.
//  Copyright © 2020 서정. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numImage = 1
    var imageName = [ "01.png", "02.png", "03.png", "04.png", "05.png", "06.png" ]
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "01.png")
    }

    @IBAction func btnprevImage(_ sender: UIButton) {
        numImage = numImage-1
        
        if(numImage<1){
            numImage = imageName.count
        }
        
        imgView.image = UIImage(named: imageName[numImage-1])
        
    }

    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage = numImage+1
        
        if(numImage>imageName.count){
            numImage = 1
        }
        
        imgView.image = UIImage(named: imageName[numImage-1])
    }
    
}

