//
//  ViewController.swift
//  Lottie_test
//
//  Created by nakagawa on 2017/07/18.
//  Copyright © 2017年 nakagawa. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let animationView = LOTAnimationView(name: "TwitterHeart")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(animationView)
        animationView.play()
        animationView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.z
    }


}

