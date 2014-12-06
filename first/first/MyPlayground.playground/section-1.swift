// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let apples = 3
let oranges = 5 //bygashero
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit"
var shoppingList = ["catfist","water","tulips","blue paint"]
shoppingList[1]
var occupations = ["malcolm":"captain"]
occupations["malcolm"]

var optionalString:String? = "Hello"
optionalString == nil
var optionalName:String?
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello,\(name)"
}else if  optionalName == nil{
    greeting = "Hello, nil"
}
func greet(name:String, day:String) -> String {
    return "Hello \(name),today is \(day)"
}
greet("Bob","Tuesday")


