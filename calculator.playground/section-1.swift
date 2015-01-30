// Playground - noun: a place where people can play

import UIKit

var str = "Hello, calculator"

class cal{
    func add(x:Double,y:Double)->Double {
        let result = Double(x+y)
        println("\(x) + \(y) = \(result)")
        return result
    }
    
    func sub(x:Double,y:Double)->Double {
        let result = Double(x-y)
        println("\(x) - \(y) = \(result)")
        return result
    }
    
    func multi(x:Double,y:Double)->Double {
        let result = Double(x*y)
        println("\(x) x \(y) = \(result)")
        return result
    }
    
    func div(x:Double,y:Double)->Double {
        let result = Double(x/y)
        println("\(x) / \(y) = \(result)")
        return result
    }
    
    func mod(x:Double,y:Double)->Double {
        let result = Double(x%y)
        println("\(x) % \(y) = \(result)")
        return result
    }
}

let edit = cal()

edit.add(10, y: 5)
edit.sub(20, y: 5)
edit.multi(5.23, y: 10.5)
edit.div(100, y: 50)
edit.mod(15, y: 4)

