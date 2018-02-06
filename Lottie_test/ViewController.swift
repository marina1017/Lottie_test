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

    var menuOn = false
    var hamburgerMenuButton:LOTAnimationView?
    let hambargerMenuFrame = CGRect(x: 0, y: 10, width: 75, height: 75)

    let animationView = LOTAnimationView(name: "TwitterHeart")

    override func viewDidLoad() {
        super.viewDidLoad()
        addHamburgerMenuButton(on: menuOn)
        // Do any additional setup after loading the view, typically from a nib.
        animationView.frame = CGRect(x:0,y:0,width:self.view.frame.width,height:667)
        animationView.contentMode = .scaleAspectFill

        addMenuToggleRecognizer()
        self.view.addSubview(animationView)
        animationView.play()
    }

    func addHamburgerMenuButton (on:Bool){
        if hamburgerMenuButton != nil {
            hamburgerMenuButton?.removeFromSuperview()
            hamburgerMenuButton = nil
        }

        let animation = on ? "HamburgerArrow" : "TwitterHeart"

        hamburgerMenuButton = LOTAnimationView(name: animation)
        hamburgerMenuButton?.cacheEnable = true
        hamburgerMenuButton?.frame  = hambargerMenuFrame
        hamburgerMenuButton?.contentMode = .scaleAspectFill
        self.view.addSubview(hamburgerMenuButton!)
    }

    func addMenuToggleRecognizer () {
        let tapRecognizer = UITapGestureRecognizer(target:self, action:#selector(ViewController.toggleMenu(recognizer:)))

        tapRecognizer.numberOfTapsRequired = 1
        hamburgerMenuButton?.addGestureRecognizer(tapRecognizer)
    }
    
    func toggleMenu (recognizer:UITapGestureRecognizer){
        if !menuOn{
            hamburgerMenuButton?.play(completion: { (success:Bool) in
                self.menuOn = true
                self.addHamburgerMenuButton(on: self.menuOn)

            })
        }else{
            hamburgerMenuButton?.play(completion: {(success:Bool) in
                    self.menuOn = false
                    self.addHamburgerMenuButton(on: self.menuOn)
            })
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

