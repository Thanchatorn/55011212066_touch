// Playground - noun: a place where people can play

import UIKit

var str = "Hello, calculator"

class cal{
    func add(x:Double,y:Double)->Double {
        let sum = Double(x+y)
        println("\(x) + \(y) = \(sum)")
        return sum
    }
    
    func sub(x:Double,y:Double)->Double {
        let sum = Double(x-y)
        println("\(x) - \(y) = \(sum)")
        return sum
    }
    
    func multi(x:Double,y:Double)->Double {
        let sum = Double(x*y)
        println("\(x) x \(y) = \(sum)")
        return sum
    }
    
    func div(x:Double,y:Double)->Double {
        let sum = Double(x/y)
        println("\(x) / \(y) = \(sum)")
        return sum
    }
    
    func mod(x:Double,y:Double)->Double {
        let sum = Double(x%y)
        println("\(x) % \(y) = \(sum)")
        return sum
    }
}

let edit = cal()

edit.add(10, y: 5)
edit.sub(20, y: 5)
edit.multi(5.23, y: 10.5)
edit.div(100, y: 50)
edit.mod(15, y: 4)

