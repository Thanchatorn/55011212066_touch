// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1
println("GG \(totalTeam) cs")
println(totalTeam)
let priceIntInferred = -19
let priceIntExplicit:Int = -19

let priceInferred = -19.99
let priceExplicit:Double = -19.99

let priceFloatInferred = -19.99
let priceFloatExplicit:Float = -19.99

let onSaleInferred = true
let onSalExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"

// Array na ja

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList

if (onSaleInferred) {
    println("\(nameInferred) on sale for \(priceInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}


var array1 = ["abc", "def", "ghi"]
for (var i = 0; i < array1.count; i++){
    println(array1[i])
}


var array2 = ["a","b","c"]
var str2 = ""
for str2 in array2 {
    println(str2)
}