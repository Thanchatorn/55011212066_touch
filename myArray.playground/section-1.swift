// Playground - noun: a place where people can play

import UIKit

var str = "Hello, myArrayFreeStyle"

class gameLibrary{
    
    var game:[String:String] = ["action":"50", "adventure":"30", "sport":"25", "racing":"10", "RPG":"20"]
    
    func update(tag:String, number:String)->String {
        if(game[tag] != nil){
            game[tag] = number
            return "update complete \(game)"
        }else{
            return "this tag is not in game library"
        }
    }
    
    func add(tag:String, number:String)->String {
        if(game[tag] != nil){
            return "this tag is already in game library \(game[tag])"
        }else{
            game[tag] = number
            return "add complete \(game)"
        }
    }
    
    func del(tag:String){
        game[tag] = nil
    }
    
}
let custom = gameLibrary()
custom.update("shooting", number: "100")
custom.update("action", number: "58")
custom.add("indy", number: "15")
custom.del("indy")
