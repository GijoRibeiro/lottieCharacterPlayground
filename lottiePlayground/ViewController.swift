//
//  ViewController.swift
//  lottiePlayground
//
//  Created by Rodrigo Ribeiro on 2/19/18.
//  Copyright © 2018 Rodrigo Ribeiro. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var lottiez       = LOTAnimationView()
    var defaultButtonColor = UIColor(red:0.14, green:0.28, blue:0.90, alpha:1.0)
    var defaultCorner = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add animations
        lottieExample()
        
        //add btns
        playNotificationBtn()
        playIdleBtn()
        changeShirt()
        changeShirtAlter()
    }
    
    func lottieExample() {
        lottiez           = LOTAnimationView(name: "data")
        let animationSize = self.view.frame.width / 1.2
        
        lottiez.frame  = CGRect(x: 0, y: 0, width: animationSize, height: animationSize)
        lottiez.center = CGPoint(x: self.view.center.x, y: self.view.center.y - self.view.center.y / 3)
        
        self.view.addSubview(lottiez)
        lottiez.loopAnimation = false
    }
    
    func playNotificationBtn() {
        let playPlease = UIButton()
        
        playPlease.frame  = CGRect(x: 0, y: 0, width: 280, height: 43)
        playPlease.center = CGPoint(x: self.view.center.x, y: self.view.center.y / 0.80)
        playPlease.backgroundColor = defaultButtonColor
        playPlease.setTitleColor(UIColor.white, for: .normal)
        playPlease.setTitle("Notification", for: .normal)
        playPlease.layer.cornerRadius = CGFloat(defaultCorner)
        playPlease.titleLabel?.textAlignment = .center
        
        self.view.addSubview(playPlease)
        
        playPlease.addTarget(self, action: #selector(playNotificationAnimation), for: .touchUpInside)
    }
    
    func playIdleBtn() {
        let playIdleButton = UIButton()

        playIdleButton.frame  = CGRect(x: 0, y: 0, width: 280, height: 43)
        playIdleButton.center = CGPoint(x: self.view.center.x, y: self.view.center.y / 0.70)
        playIdleButton.backgroundColor = defaultButtonColor
        playIdleButton.setTitleColor(UIColor.white, for: .normal)
        playIdleButton.setTitle("Smile", for: .normal)
        playIdleButton.layer.cornerRadius = CGFloat(defaultCorner)
        playIdleButton.titleLabel?.textAlignment = .center

        self.view.addSubview(playIdleButton)

        playIdleButton.addTarget(self, action: #selector(playIdleAnimation), for: .touchUpInside)
    }

    func changeShirt() {
        let changeShirtButton = UIButton()
        
        changeShirtButton.frame  = CGRect(x: 0, y: 0, width: 280, height: 43)
        changeShirtButton.center = CGPoint(x: self.view.center.x, y: self.view.center.y / 0.620)
        changeShirtButton.backgroundColor = defaultButtonColor
        changeShirtButton.setTitleColor(UIColor.white, for: .normal)
        changeShirtButton.setTitle("Look 1", for: .normal)
        changeShirtButton.titleLabel?.textAlignment = .center
        changeShirtButton.layer.cornerRadius = CGFloat(defaultCorner)

        self.view.addSubview(changeShirtButton)

        changeShirtButton.addTarget(self, action: #selector(changeShirt1), for: .touchUpInside)
    }

    func changeShirtAlter() {
        let changeShirtButtonAlter = UIButton()

        changeShirtButtonAlter.frame  = CGRect(x: 0, y: 0, width: 280, height: 43)
        changeShirtButtonAlter.center = CGPoint(x: self.view.center.x, y: self.view.center.y / 0.555)
        changeShirtButtonAlter.backgroundColor = defaultButtonColor
        changeShirtButtonAlter.setTitleColor(UIColor.white, for: .normal)
        changeShirtButtonAlter.setTitle("Look 2", for: .normal)
        changeShirtButtonAlter.titleLabel?.textAlignment = .center
        changeShirtButtonAlter.layer.cornerRadius = CGFloat(defaultCorner)

        self.view.addSubview(changeShirtButtonAlter)

        changeShirtButtonAlter.addTarget(self, action: #selector(changeShirt2), for: .touchUpInside)
    }

}

