//
//  ViewController.swift
//  sampleOpenCVApp
//
//  Created by Muneharu Onoue on 2017/03/28.
//  Copyright © 2017年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!

    @IBAction func change(_ sender: UIButton) {
        let beforeImage = myImage.image
        let afterImage = ObjCOpenCV.detectEdge(with: beforeImage)
        myImage.image = afterImage
    }

}

