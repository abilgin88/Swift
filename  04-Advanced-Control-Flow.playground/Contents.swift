import UIKit

let closedRange = 0...5
let halfOpenRange = 0..<5

while Int.random(in: 1...6) != 6 {
    print("Not a six")
}

let count = 10
var sum = 0
for i in 1...count {
    sum += i
    print(sum)
}

sum = 1
var lastSum = 0

for _ in 0..<count {
    let temp = sum
    sum = sum + lastSum
    lastSum = temp
}

sum = 0
for i in 1...count where i % 2 == 1 {
    sum += i
}

sum = 0

for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    for column in 0..<8 {
        sum += row * column
    }
}
print(sum)

sum = 0

for row in 0..<8 {
    if row % 2 == 1 {
        continue
    }
    for column in 0..<8 {
        sum += row * column
    }
}
print(sum)

sum = 0

for row in 0..<8 {
    for column in 0..<8 {
        sum += row * column
    }
}
print("\(sum)\n")


for column in 0..<8 {
    print("\n\(column)")
    for row in 0..<column {
        print(" \(column) - \(row * column)")
    }
}

sum = 0

rowLoop: for row in 0..<8 {
columnLoop: for column in 0..<8 {
    if row == column {
        continue rowLoop
    }
    sum += row * column
}
}

// square of each number.
let range = 1...10
for i in range {
    print("Square of \(i) = \(i * i)")
}

// square root of each number.
for i in range {
    print("Square root of \(i) = \(sqrt(Double(i)))")
}

sum = 0
for row in 0..<8 where row % 2 != 0 {
    for column in 0..<8 {
        sum += row * column
        
    }
}
print(sum)

// Switch statements

let number = 10

switch number {
case 0:
    print("Zero")
default:
    print("Non-zero")
}

switch number {
case 10:
    print("It's ten!")
default:
    break
}


let string = "Dog"

switch string {
case "Cat", "Dog":
    print("Animal is a house pet")
default:
    print("Animal is not a house pet")
}


let hourOfDay = 12
var timeOfDay = ""

switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
    timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
    timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
    timeOfDay = "Afternoon"
case 17, 18, 19:
    timeOfDay = "Evening"
case 20, 21, 22, 23:
    timeOfDay = "Late evening"
default:
    timeOfDay = "INVALID HOUR"
}

switch hourOfDay {
case 0...5:
    timeOfDay = "Early morning"
case 6...11:
    timeOfDay = "Morning"
case 12...16:
    timeOfDay = "Afternoon"
case 17...19:
    timeOfDay = "Evening"
case 20...23:
    timeOfDay = "Late evening"
default:
    timeOfDay = "INVALID HOUR"
}


// switch statement uses the let-where syntax
// The method by which you can match values based on conditions is known as pattern matching.

switch number {
case let x where x % 2 == 0:
    print("Even")
default:
    print("Odd")
}

switch number {
case _ where number % 2 == 0:
    print("Even")
default:
    print("odd")
}


// Partial matching

var coordinates = (x: 3 , y: 2, z: 5)

switch coordinates {
case (0, 0, 0):
    print("Origin")
case (_, 0, 0):
    print("On the x-axis.")
case (0, _, 0):
    print("On the y-axis.")
case (0, 0, _):
    print("On the z-axis.")
default:
    print("Somewhere in space")
}


// You’re using the underscore to mean that you don’t care about the value. If you don’t want to ignore the value, you can bind it and use it in your switch statement.

coordinates = (2, 2, 0) // pertinent values.

switch coordinates {
case (0, 0, 0):
    print("Origin")
case (let x, 0, 0):
    print("On the x-axis at x = \(x)")
case (0, let y, 0):
    print("On the y-axis at y = \(y)")
case (0, 0, let z):
    print("On the z-axis at z = \(z)")
case let (x, y, z): // let (x, y, z)is the same as(let x, let y, let z).
    print("Somewhere in space at x = \(x), y= \(y), z = \(z)")
}


// let-where syntax

switch coordinates {
case let (x, y, _) where y == x:
    print("Along the y = x line")
case let (x, y, _) where y == x * x:
    print("Along the y = x^2 line")
default:
    break
}

let age = 89

switch age {
case 0...2:
    print("Infinat")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle Age")
case  let x where x >= 61: // case _ where age >= 61
    print("Elderly")
default:
    print("INVALID AGE")
    
}

let information = ("Abdullah", 61)

switch information {
case let (x, y) where y >= 0 && y <= 2:
    print("\(x) is an Infinat")
case let (x, y) where y >= 3 && y <= 12:
    print("\(x) is an Child")
case let (x, y) where y >= 13 && y <= 19:
    print("\(x) is an Teenager")
case let (x, y) where y >= 20 && y <= 39:
    print("\(x) is an Adult")
case let (x, y) where y >= 40 && y <= 60:
    print("\(x) is an Middle Age")
case let (x, y) where y >= 61:
    print("\(x) is an Elderly")
default:
    print("INVALID AGE")
}


let tuple = ("Abdullah", 76)
switch tuple {
case (let name, 0...2):
    print("\(name) is a infant")
case (let name, 3...12):
    print("\(name) is a Child")
case (let name, 13...19):
    print("\(name) is a Teenager")
case (let name, 20...39):
    print("\(name) is a Adult")
case (let name, 40...60):
    print("\(name) is a Middle Age")
      case let(name, age) where age >= 61:
    print("\(name) is a Elderly")
default:
    print("INVALID AGE")
}
