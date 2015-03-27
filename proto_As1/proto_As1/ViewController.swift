//
//  ViewController.swift
//  proto_As1
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coloredSquare = UIView()
    
    @IBOutlet weak var numOfTiggerSlider: UISlider!

    @IBAction func animateButton(sender: AnyObject) {
        
        let coloredSquare = UIView()
        let size : CGFloat = CGFloat(arc4random_uniform(40))+20
        let yPosition : CGFloat = CGFloat(arc4random_uniform(200))+20
        
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x: 0, y: yPosition, width: size, height: size)
        self.view.addSubview(coloredSquare)
        
        UIView.animateWithDuration(1.0, animations: {
            coloredSquare.backgroundColor = UIColor.greenColor()
            
            coloredSquare.frame = CGRect(x: 330, y: yPosition, width: size, height: size)
            },completion: { animationFinished in
                coloredSquare.removeFromSuperview()
        })
    }
    
    @IBAction func animateBut(sender: AnyObject) {
        let numberOfTigger = Int(self.numOfTiggerSlider.value)
        for loopNumber in 1...numberOfTigger {
            let duration : NSTimeInterval = 1.0
            let delay = NSTimeInterval(900 + arc4random_uniform(100))/1000
            let options = UIViewAnimationOptions.CurveLinear
            
            let size : CGFloat = CGFloat(arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat(arc4random_uniform(200))+20
        
            let tigger = UIImageView()
            tigger.image = UIImage(named: "Tigger.png")
            tigger.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(tigger)
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            
                tigger.frame = CGRect(x: 330, y: yPosition, width: size, height: size)
                },completion: { animationFinished in
                    tigger.removeFromSuperview()
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
//        
//        self.view.addSubview(coloredSquare)
//        
//        UIView.animateWithDuration(1.0, animations: {
//            self.coloredSquare.backgroundColor = UIColor.redColor()
//            self.coloredSquare.frame = CGRect(x: 325, y: 120, width: 50, height: 50)
//        })
//        let duration = 1.0
//        let delay = 0.0
//        
//        let damping = 0.5
//        let velocity = 1.0
        
//        let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat
//        UIView.animateWithDuration(duration, animations: {
//    
//            }, completion: { finished in
//        })
//        
//        
//        
//        UIView.animateWithDuration(1.0, delay: 0.0, options: options, animations: {
//                self.coloredSquare.backgroundColor = UIColor.redColor()
//                self.coloredSquare.frame = CGRect(x: 0, y: 120, width:50, height: 10)
//            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

