// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class library{
    var tag:[String] = ["action", "adventure", "sprot"]
    var n:[String] = ["50","20","30"]
    
    let ch : String
    init(request :String){
        self.ch = request
    }
    
    func find()->String{
        var game:String = ""
        for (var i=0 ; i < tag.count ; i++){
            if(tag[i]==ch){
                game = n[i]
            }
        }
        return ch+" have "+game
    }
    
}
let edit = library(request: "adventure")
edit.find()