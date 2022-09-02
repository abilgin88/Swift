import UIKit
import Foundation
import Darwin

var multiplyClosure: (Int, Int) -> Int

var multiplyClosure1 = { (a: Int, b: Int) -> Int in
    return a * b
}
multiplyClosure1(3, 4)

//

multiplyClosure1 = { (a: Int, b: Int) -> Int in
    a * b
}

//

multiplyClosure1 = { (a, b) in
    a * b
}

//

multiplyClosure1 = {
    $0 * $1
}

//

func operateOnNumber(_ a: Int, _ b: Int,
                     operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    print(result)
    return result
}

let addClosure = { (a: Int, b: Int) in
    a + b
}

operateOnNumber(4, 2, operation: addClosure)

//

func addFunction(_ a: Int, _ b: Int) -> Int {
    a + b
}
operateOnNumber(4, 2, operation: addFunction)

//

operateOnNumber(4, 2, operation: {(a: Int, b: Int) -> Int in
    return a + b
})

//

operateOnNumber(4, 2, operation: { $0 + $1})

//

operateOnNumber(4, 2, operation: +)

// trailing closure syntax.


operateOnNumber(4, 2) {
    $0 + $1
}

// multiple tralling  closure syntax

func sequenced(first: ()-> Void, second: () -> Void) {
    first()
    second()
}

//

sequenced {
    print("Hello, ", terminator: "")
} second: {
    print("world")
}

sequenced {
    print(2+3)
} second: {
    print(3*3)
}

// closure with no return value
// var multiplyClosure: (Int, Int) -> Int
// var multiplyClosure: (Int, Int) -> Int = {}

let voidClosure: () -> Void = {
    print("Swift Apprentice is awesome")
}
voidClosure()

// capturing from the enclosing scope

var counter = 0
let incrementCounter = {
    counter += 1
}

incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()
print(counter)

func countingClosure() -> () -> Int {
    var counter = 0
    let incrementCounter: () -> Int = {
        counter += 1
        return counter
    }
    return incrementCounter
}

let counter1 = countingClosure()
let counter2 = countingClosure()

counter1()
counter2()
counter1()
counter2()
counter1()
counter2()


// custom sorting with closures

let names = ["ZZZZZZ", "BB", "A", "CCCC", "EEEE"]
names.sorted()

names.sorted {
    $0.count > $1.count
}

names.sorted {
    $0 < $1
}

names.sorted {
    $0 > $1
}

names.sorted {
    $0.count < $1.count
}

// iteration over collections with closures

let values = [1, 2, 3, 4, 5, 6]
values.forEach {
    print("\($0): \($0*$0)")
}

values.forEach {
    print($0 + $0)
}



var prices = [1.5, 10, 4.99, 2.30, 8.19]

let largePrices = prices.filter {
    $0 > 5
}

print(largePrices)

//func filter(_ isIncluded: (Element) -> Bool) -> [Element]

let largePrice = prices.first {
    $0 > 5
}

let smallPrice = prices.first {
    $0 < 5
}

let smallPrices = prices.filter {
    $0 < 5
}

let largePriceLast = prices.last {
    $0 > 5
}

// map

let salePrices = prices.map {
    $0 * 0.9
}

print(salePrices)

//

let userInput  = ["0", "11", "haha", "42"]

let numbers1 = userInput.map {
    Int($0)
}

//

let numbers2 = userInput.compactMap {
    Int($0)
}

//

let userInputNasted = [["0", "1"], ["a", "b", "c"], ["#"]]
let allUserInput = userInputNasted.flatMap {
    $0
}
var prices6 = [1, 2, 3, 4, 5]
let sum = prices6.reduce(5) {
    $0 + $1
}

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) {
    $0 + $1.key * Double($1.value)
}

//

let stock2 = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum2 = stock2.reduce(0) {
    $1.key * Double($1.value)
}

let farmAnimals = ["$": 5, "%": 10, "&": 50, "!": 1]
let allAnimals = farmAnimals.reduce(into: []) {
    (result, this: (key: String, value: Int)) in
    for _ in 0..<this.value {
        result.append(this.key)
    }
}

//

let removeFirst = prices.dropFirst()
let removeFirstTwo = prices.dropFirst(2)

//

let removeLast = prices.dropLast()
let removeLastTwo = prices.dropLast(2)

//

let firstTwo = prices.prefix(2)
let lastTwo = prices.suffix(2)

//

prices.removeAll() { $0 > 2}
print(prices)
prices.removeAll()

// lazzy collections

func isPrime(_ number: Int) -> Bool {
    if number == 1 { return false}
    if number == 2 || number == 3 { return true}
    
    for i in 2...Int(Double(number).squareRoot()) {
        if number % i == 0 { return false}
    }
    
    return true
}


var primes: [Int] = []
var i = 1

while primes.count < 10 {
    if isPrime(i) {
        primes.append(i)
    }
    i += 1
}

primes.forEach { print($0)}

//

let primes2 = (1...).lazy
    .filter {isPrime($0)}
    .prefix(10)
primes2.forEach{print($0)}

//

let names4 = ["Ali", "Orhan", "Nurdan", "Ceylan"]
let concatenation = names4.reduce("") {
    $0 + $1
}

//

let namesLongerThanfour = names4.filter {
    $0.count > 4
}.reduce(""){
    $0 + " " + $1
}

//

let namesAndAges = ["Abdullah": 34, "Orhan": 5, "Nurdan": 8, "Ceylan": 35]

let namesAndAgesmaller18 = namesAndAges.filter {
    $0.value < 18
}

let namesAndAgeOlder18 = namesAndAges.filter {
    $0.value > 18
}.map {
    $0.key
}

func repeatTask(times: Int, task: () -> Void) {
    for _ in 0...times {
        task()
    }
}

//let task = {
//    print("Swift Apprentice is a great book!")
//}
//
//repeatTask(times: 10, task: task)

//

repeatTask(times: 10) {
    print("Swift Apprentice is a great book!")
}
//

func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var result = 0
    for i in 1...length {
        result += series(i)
    }

    return result
}


func mathSum(length: Int, series: (Int) -> Int) -> Int {
  return (1...length).map { series($0) }.reduce(0, +)
}
multiplyClosure = {
$0 * $1 }

