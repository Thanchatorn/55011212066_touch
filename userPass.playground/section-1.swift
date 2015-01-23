// Playground - noun: a place where people can play

import UIKit

var str = "Hello, userPass"

class userPass {
    var namePass: [String: String] = ["bob":"1234", "alice":"4321", "jack":"2468"]
    
    func check(name:String)->String {
        var str:String
        if namePass.isEmpty {
            str = "namePass dictionary is empty."
        }else{
            str = "namePass dictionary is not empty."
        }
        return name
    }

    func add(name:String){
        
       namePass[name] = "5555"
        
    }

    func del(name: String){
        let y = name
        namePass[name] = nil
    }
}

let edit = userPass()
edit.check("bob")
edit.add("joe")
edit.del("joe")
