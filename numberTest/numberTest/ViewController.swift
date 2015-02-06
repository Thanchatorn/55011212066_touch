//
//  ViewController.swift
//  numberTest
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num3: UILabel!
    
    var x = 0
    var y = 0
    var z = 0
    
    @IBAction func one(sender: AnyObject) {
        x = x + 1
        num1.text = String(x)
    }
    @IBAction func two(sender: AnyObject) {
        y = y + 1
        num2.text = String(y)
    }
    @IBAction func three(sender: AnyObject) {
        z = z + 1
        num3.text = String(z)
    }
    @IBAction func reset(sender: AnyObject) {
        clear()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clear() {
        num1.text = "0"
        num2.text = "0"
        num3.text = "0"
        x = 0
        y = 0
        z = 0
    }


}

