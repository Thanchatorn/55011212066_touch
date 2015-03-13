//
//  subjectViewController.swift
//  Exam1_55011212066
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class subjectViewController: UIViewController,UITableViewDelegate {
    let cellIdentifier = "cellIdentifier"
    
    @IBOutlet weak var subject: UITextField!
    @IBOutlet weak var midScore: UITextField!
    @IBOutlet weak var inclassScore: UITextField!
    @IBOutlet weak var finalScore: UITextField!
    @IBOutlet weak var resultsTextView: UITextView!

    @IBAction func calculate(sender: AnyObject) {
        var str:String = subject.text
        var numMidScore = Double((midScore.text as NSString).doubleValue)
        var numInclassScore = Double((inclassScore.text as NSString).doubleValue)
        var numFinalScore = Double((finalScore.text as NSString).doubleValue)
        
        var sumScore = numMidScore + numInclassScore + numFinalScore
        var total = gradeCal(sumScore)
        
        resultsTextView.text = "Subject : \(str) \nGrade : \(total) "+"("+"\(sumScore)"+")"
        
    }
    
    
    func gradeCal(score:Double) -> String{
        var result:String = ""
        if(score>=80){
            result = "A"
        }
        else if(score>=74){
            result = "B+"
        }
        else if(score>=68){
            result = "B"
        }
        else if(score>=62){
            result = "C+"
        }
        else if(score>=56){
            result = "C"
        }
        else if(score>=50){
            result = "D+"
        }
        else if(score>=44){
            result = "D"
        }
        else{
            result = "F"
        }

        return result
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
