import UIKit


// Assignment Operator


let b = 10
var a = 5
a = b
// a is now equal to b

let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2

//if x = y {
//    // This isn't valid, because x = y doesn't return value
//}

if x == y {
    // This isn't valid, because x = y doesn't return value
}
 
// Arithmetic Operators

1 + 3 // equals 3
5 - 4
2 * 3
10.0 / 2.5

"hello" + "worls"

// Reminder Operator

9 % 4
-9 % 4

//  Unary Minus Operator

let three = 3
let minusThree = -three
let plusThree = -minusThree

// Unary plus operator

let minusSix = -6
let alsoMinusSix = +minusSix

// Compound Assignment Operators

//var a = 1
//a += 2

// Comparison Operators

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "world"
if name == "world" {
    print("Hello World")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

(1, "zebra") < (2, "apple") // true because 1 is less than 2; "zebra" and "apple" aren't compare
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")
 
("blue", -1) < ("purple", 1)
// ("blue", false) < ("purple", true)

// Ternary Conditional Operator

//if quastion {
//    answer1
//} else {
//    answer2
//}
//

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// The example above is shorthand for the code below:

let contentHeight1 = 40
let hasHeader1 = true
var rowHeight1: Int

if hasHeader1 {
    rowHeight1 = contentHeight1 + 50
} else {
    rowHeight1 = contentHeight1 + 20
}

// Nil-Coalescing Operator

// x != nil ? x! : y

let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil

var colorNamesToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNamesToUse is set to the default of "red"

userDefinedColorName = "green"
colorNamesToUse = userDefinedColorName ?? defaultColorName

// Range Operators

// Closed Range Operator

for index in 1...5 {
    print("\(index) times is \(index * 5)")
}

// Half-Open Range Operator

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

// One-Sided Ranges

for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}


let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)

// Logical Operators

// Logical NOT Operator
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

// Logical AND Operator
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}

// Logical OR Operator
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}

//Combining Logical Operators
if enteredDoorCode && passedRetinaScan || hasDoorKey ||
    knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}


// Explicit Parentheses
if (enteredDoorCode && passedRetinaScan) || hasHeader ||
    knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}
