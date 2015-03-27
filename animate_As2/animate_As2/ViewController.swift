//
//  ViewController.swift
//  animate_As2
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    let tigger = UIImageView()

    @IBAction func animateButton(sender: AnyObject) {
        let views = (frontView: self.redSquare, backView: self.blueSquare)
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        
        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
    
            views.frontView.removeFromSuperview()
            
            self.container.addSubview(views.backView)
            
            }, completion: { finished in
        })
    }
    
    
    @IBAction func animateButton2(sender: AnyObject) {
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        let transitionOptions = UIViewAnimationOptions.TransitionCurlDown
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
        
    }
    
    @IBAction func button3(sender: AnyObject) {
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }
    
    
    @IBAction func button4(sender: AnyObject) {
        
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateWithDuration(1.0, animations: {
            self.tigger.transform = CGAffineTransformMakeRotation(fullRotation)
        })
        
        let duration = 2.0
        let delay = 0.0
        let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
               
                self.tigger.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                self.tigger.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                self.tigger.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
            })
            
            }, completion: {finished in
        })
        
    }
    
    
    @IBAction func button5(sender: AnyObject) {
        
        for i in 0...5 {
        let tigger = UIImageView()
        tigger.image = UIImage(named: "Tigger.png")
        tigger.frame = CGRect(x: 170, y: 300, width: 50, height: 50)
        self.view.addSubview(tigger)
            
        let random = CGFloat(arc4random_uniform(150))

        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 0,y: 339+random))
        path.addCurveToPoint(CGPoint(x: 380, y: 339+random), controlPoint1: CGPoint(x: 136, y: 553+random), controlPoint2: CGPoint(x: 178, y: 110+random))
        
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        anim.path = path.CGPath
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = Double(arc4random_uniform(40)+30)/10
        anim.timeOffset = Double(arc4random_uniform(290))
        
        tigger.layer.addAnimation(anim, forKey: "animate position along path")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tigger.image = UIImage(named: "Tigger.png")
        tigger.frame = CGRect(x: 170, y: 300, width: 50, height: 50)
        self.view.addSubview(tigger)
        
        self.container.frame = CGRect(x: 90, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
        
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        
        self.container.addSubview(self.redSquare)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

