import UIKit
import Foundation
import Darwin

// Challenge 1: Variables
let myAge:Int = 34
var dogs:Int = 0
dogs += 1


// Challenge 2: Make it compile
var age:Int = 16
print(age)
age = 30
print(age)

// Challenge 3: Compute the answer
let x: Int = 46
let y: Int = 10
let answer1: Int = (x * 100) + y
let answer2: Int = (x * 100) + (y * 100)
let answer3: Int = (x * 100) + (y / 10)

// Challenge 4: Add parentheses
8-4*2+6/3*4
8 - (4 * 2) + (6 / 3 * 4)
8 - (4 * 2) + ((6 / 3) * 4)

// Challenge 5: Average rating
let rating1: Double = 4
let rating2: Double = 2
let rating3: Double = 5
var averageRating  = (rating1 + rating2 + rating3) / 3

//Challenge 6: Electrical power
let voltage: Double = 240.0
let current: Double = 7.5
let power: Double = voltage * current

//Challenge 7: Electrical resistance
let resistance: Double = power / (current * current)



// Challenge 8: Random integer

let randomNumber = arc4random()
let diceRoll = 1 + randomNumber % 6

// Challenge 9: Quadratic equations

let a: Double = 2.0
let b: Double = 3.0
let c: Double = 1.0

var root1 = (-b + sqrt(b * b - (4 * a * c))) / (2 * a)
var root2 = (-b - sqrt(b * b - (4 * a * c))) / (2 * a)
