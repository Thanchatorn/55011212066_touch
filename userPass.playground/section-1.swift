// Playground - noun: a place where people can play

import UIKit

var str = "Hello, userPass"

class userPass {
    var namePass: [String: String] = ["bob":"1234", "alice":"4321", "jack":"2468"]
    
    func check()->String {
        var str:String
        if namePass.isEmpty {
            str = "namePass dictionary is empty."
        }else{
            str = "namePass dictionary is not empty."
        }
        return str
    }
    
    func add(name:String, pass:String)->String {
        if(namePass[name] == nil){
            namePass[name] = pass
            return "add complete \(namePass)"
        }else{
            return "cannot add \(namePass)"
        }
    }
    
    func update(name:String, pass:String) -> String {
        if(namePass[name] != nil){
            namePass[name] = pass
            return "edit complete \(namePass)"
        }else{
            return "cannot edit \(namePass)"
        }
    }

    func del(name: String)->String{
        if(namePass[name] != nil){
            namePass[name] = nil
            return "delete complete"
        }else{
            return "cannot delete"
        }
    }
}

let edit = userPass()
edit.check()
edit.add("joe",pass:"123456")
edit.update("joe",pass:"12")
edit.del("joe")
