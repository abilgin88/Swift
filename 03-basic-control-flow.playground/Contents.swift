import UIKit

let yes: Bool = true
let no: Bool = false

let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualTwo = (1 != 2)
let alsoTrue = !(1 == 2)

let isOneGreaterThantTwo = (1 > 2)
let isOneLessThantTwo = (1 < 2)

let and = true && true
let or = true || false

let andTrue = 1 < 3 && 4 > 3
let andFalse = 1 < 3 && 3 > 4

let orTrue = 1 < 3 || 3 > 4
let orFalse = 1 == 3 || 3 == 4

let andOr = (1 < 2 && 3 > 4) || 1 < 4

let guess = "dog"
let dogEqualsCat = guess == "Cat"

let order = "cat" < "dog"

var switchState = true
switchState.toggle()
switchState.toggle()

let myAge = 34
let isTeenager = myAge > 13 && myAge < 19

let theirAge = 30
let bothTeenager = (myAge > 13 && myAge < 19) && (theirAge > 13 && theirAge < 19)
let bothTeenagers = theirAge >= 13 && theirAge <= 23 && isTeenager

let reader = "Abdulllah"
let author = "Matt Galloway"
let authorIsReader = reader == author

let readerBeforeAuthor = reader < author

if 2 > 1 {
    print("Yes, 2 is grater than 1")
}

let animal = "Fox"

if animal == "Cat" || animal == "Dog" {
    print("Animal is a house pet.")
} else {
    print("Animal is not a house pet")
}


let hourOfDay = 12
var timeOfDay = ""

if hourOfDay < 6 {
    timeOfDay = "Early morning"
} else if hourOfDay < 12 {
    timeOfDay = "Morning"
} else if hourOfDay < 17 {
    timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
    timeOfDay = "Evening"
} else if hourOfDay < 24 {
    timeOfDay = "Late evening"
} else {
    timeOfDay = "INVALID HOUR"
}

print(timeOfDay)

if 1 > 3 && reader == "Abdullah" {
    
}

if 1 < 2 || reader == "Abdulah" {
    
}

var hoursWorked = 45
var price = 0

if hoursWorked > 40 {
    let hoursOver40 = hoursWorked - 40
    price += hoursOver40 * 50
    hoursWorked -= hoursOver40
}
price += hoursWorked * 25

print(price)
// print(hoursOver40)

let a = 5
let b = 10

let min: Int
if a < b {
    min = a
} else {
    min = b
}

let max: Int
if a > b {
    max = a
} else {
    max = b
}


let a2 = 5
let b2 = 10

let min2 = a < b ? a2 : b2
let max2 = a2 > b2 ? a2 : b2

let myAge3 = 34

if myAge3 > 13 && myAge3 < 19 {
    print("Teenager")
} else {
    print("Not Teenager")
}

let answer = myAge3 > 13 && myAge3 < 19  ? "Teenager": "Not Teenager"
print(answer)

var sum = 1

while sum < 1000 {
    sum = sum + (sum + 1)
}

sum = 1

repeat {
    sum = sum + (sum + 1)
} while sum < 1000

sum = 1
while true {
    sum = sum + (sum + 1)
    if sum >= 1000 {
        break
    }
}


var counter = 0

while counter < 10 {
 print("Counter is \(counter)")
    counter += 1
}


var counter1 = 0
var roll = 0
repeat {
    roll = Int.random(in: 0...5)
    counter1 += 1
    print("After \(counter) roll(s), roll is \(roll)")
} while roll != 0

let firstName = "Matt"
var lastname = ""
if firstName == "Matt" {
 // let lastName = "Galloway"
} else if firstName == "Ray" {
 // let lastName = "Wenderlich"
}
//let fullName = firstName + " " + lastName <--- lastName is in the if scope


let answer5 = true && true
let answer6 = false || false
let answer7 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer8 = ((10 / 2) > 3) && ((10 % 2) == 0)


var currentPosition = 2
let diceRoll = 1

var nextPosition = currentPosition + diceRoll
if nextPosition == 3 {
    nextPosition = 15
}else if nextPosition == 7 {
    nextPosition = 12
}else if nextPosition == 11 {
    nextPosition = 2
} else if nextPosition == 9{
    nextPosition = 9
} else {
    nextPosition += 1
}

print("Board position after \(currentPosition) is \(nextPosition)")


// Challenge 4: Number of days in a month

var month: String = "february"
var year: Int = 2005

var daysOfMonth = 0
if month == "january" || month == "march" || month == "may"
    || month == "july" || month == "august" || month == "october" || month == "december"{
    daysOfMonth = 31
    print("The number of days in \(month) is \(daysOfMonth)")
} else if month == "february" {
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0{
        daysOfMonth = 29
        print("The number of days in \(month) is \(daysOfMonth)")
    } else {
        daysOfMonth = 28
        print("The number of days in \(month) is \(daysOfMonth)")
    }
    
} else if month == "april" || month == "june" || month == "september" || month == "november" {
    daysOfMonth = 30
    print("The number of days in \(month) is \(daysOfMonth)")
    
} else {
    print("INVALID MONTH")
}

// Challenge 5: Next power of two

let number = 129
var trial = 1
var times = 0
while trial < number {
    trial = trial * 2
    times += 1
}

print("Next power of 2 >= \(number) is \(trial) which is 2 to the power of \(times)" )

// Challenge 6: Triangular number

let n = 5
let tn = n * (n + 1) / 2

print("Triangular number of \(n) is \(tn)")


var depth = 5
var count = 1
var triangularNumber = 0
while count <= depth {
    triangularNumber += count
    count += 1
}
print("Triangular number with depth \(depth) is \(triangularNumber)")

// Challenge 7: Fibonacci

let f0 = 0
var f1 = 1
var f2 = f1 + f0
var f3 = f2 + f1
var f4 = f3 + f2
var f5 = f4 + f3

var x1 = 1
var x2 = 1
var sonuc = 0
var count2 = 0

while count2 < 10 {
    x1 = x2
    x2 = sonuc
    sonuc = x1 + x2
    count2 += 1
    print(sonuc)
}

//let n = 10
var current = 1
var previous = 1
var done = 2
while done < n {
    let next = current + previous
    previous = current
    current = next
    done += 1
}
print("Fibonacci number \(n) is \(current)")

// Challenge 8: Make a loop

var givenFactor = 7

for i in 1...12 {
    let x = i * givenFactor
    print("\(i) x \(givenFactor) = \(x)")
}

let factor = 7
var accumulator = 0

var i = 0
while i <= 12 {
    print("\(factor) x \(i) = \(accumulator)")
    accumulator += 7
    i += 1
}

// Challenge 9: Dice roll table

var target = 2
while target <= 12 {
    var combinationsFound = 0
    var valueOnFirstDice = 1
    while valueOnFirstDice <= 6 {
        var valueOnSeconDice = 1
        while valueOnSeconDice <= 6 {
            if valueOnFirstDice +
                valueOnSeconDice == target {
                combinationsFound += 1
            }
            valueOnSeconDice += 1
        }
                valueOnFirstDice += 1
    }
    print("\(target):\t\(combinationsFound)")
    target += 1
}
