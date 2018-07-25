//
//  Actions.swift
//  lottiePlayground
//
//  Created by Rodrigo Ribeiro on 6/24/18.
//  Copyright © 2018 Rodrigo Ribeiro. All rights reserved.
//

import Foundation
import Lottie

extension ViewController {
    
    @objc func playNotificationAnimation(){
        print("Notification")
        lottiez.loopAnimation = true
        lottiez.autoReverseAnimation = false
        lottiez.setProgressWithFrame(30)
        lottiez.play(fromProgress: 0, toProgress: 1.0, withCompletion: nil)
    }
    
    @objc func playIdleAnimation(){
        print("Idle")
        lottiez.loopAnimation = true
        lottiez.autoReverseAnimation = true
        lottiez.setProgressWithFrame(30)
        lottiez.play(fromFrame: 0, toFrame: 60)
    }
    
    @objc func changeShirt1(){
        //change shirt
        lottiez.setValue(UIColor(red:0.73, green:0.31, blue:0.90, alpha:1.0), forKeypath: "Bust Outlines.Body Top.Shirt.Fill 1.Color", atFrame: 0)
        lottiez.setValue(UIColor(red:0.54, green:0.26, blue:0.90, alpha:1.0), forKeypath: "Bust Outlines.Body Top.Pocket.Pocket Body.Fill 1.Color", atFrame: 0)
        
        //change skin
        lottiez.setValue(UIColor(red:0.66, green:0.40, blue:0.31, alpha:1.0), forKeypath: "Bust Outlines.Body.Body.Fill 1.Color", atFrame: 0)
    }
    
    @objc func changeShirt2(){
        //change shirts
        lottiez.setValue(UIColor(red:0.09, green:0.81, blue:0.76, alpha:1.0), forKeypath: "Bust Outlines.Body Top.Shirt.Fill 1.Color", atFrame: 0)
        lottiez.setValue(UIColor(red:0.11, green:0.69, blue:0.76, alpha:1.0), forKeypath: "Bust Outlines.Body Top.Pocket.Pocket Body.Fill 1.Color", atFrame: 0)
        
        //change skin
        lottiez.setValue(UIColor(red:1.00, green:0.80, blue:0.58, alpha:1.0), forKeypath: "Bust Outlines.Body.Body.Fill 1.Color", atFrame: 0)
    }
    
}
