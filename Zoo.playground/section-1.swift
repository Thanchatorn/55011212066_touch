// Playground - noun: a place where people can play

import UIKit

var str = "Hello, My Zoo"

class zooZoo {
    var af: [String: String] = ["lion":"meat", "cat":"fish", "monkey":"banana"]
    
    func eat(key2: String) {
           for(key,value) in af {
            if(key==key2){
            println("\(key) eat \(value)")
            break
            }
        }
    }
}
let animal_eat = zooZoo()
animal_eat.eat("lion")
