import UIKit
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// print(convertedNumber)

//nil

var serverResponseCode: Int? = 404
serverResponseCode = nil
var surveyAnswer: String?

// If Statements and Forced Unwrapping

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

if convertedNumber != nil {
    print("convertedNumber contains some integer value of \(convertedNumber!).")
}

// Optional Binding

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

let myNumber = Int(possibleNumber)

if let myNumber = myNumber {
    print("My number is \(myNumber)")
}

//if let myNumber {
//    print("My number is \(myNumber)")
//}
// Prints "My number is 123"


if let firstNumber = Int("4"), let secondNumber = Int("43"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}


if let firstNumber = Int("4") {
    if let secondNumber = Int("42"){
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

// Implicitly Unwrapped Optionals


let possibleString: String? = "An optional string"
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString // no need for exclamation point

let optionalString = assumedString

if assumedString != nil {
   // print(assumedString)
}
if let defineString = assumedString {
    print(defineString)
}


// Example 1: How to declare an optional in Swift?\
var someValue:Int?
var someAnotherValue:Int!
print(someValue)
print(someAnotherValue)


//Example 2: Assigning and accessing a value from an optional
let someValue2:Int? = 5
print(someValue2)
print(someValue2!) // unwrapping


//Example 3: Explicitly declaring an unwrapped optional
let someValue3:Int! = 5
print(someValue3)


//Example 4: Fatal error when accessing a null unwrapped optional
var someValue4:Int!
// var unwrappedValue:Int = someValue4 // crashes due to this line

// Optional Handling
// 1. If-statement

// Example 5: Optional handling with if else statement

var someValue5: Int!
var someAnotherValue5: Int! = 0

if someValue5 != nil {
    print("It has some value \(someValue5!)")
} else {
    print("doesn't contain value")
}

if someAnotherValue5 != nil {
    print("It has some value \(someAnotherValue5!)")
} else {
    print("doesn't contain value")
}

// 2. Optional Binding (if-let)
// Example 5: Optional handling using if let statement

var someValue6:Int?
var someAnotherValue6:Int! = 0
print(someAnotherValue6)

if let temp = someValue6 {
    print("It has some value \(temp)")
} else {
    print("doesn't contain value")
}

if let temp = someAnotherValue6 {
    print("It has some value \(temp)")
}else {
    print("doesn't contain value")
}


// 3. Guard statement
//Example 6: Optional handling using guard-let

func testFunction() {
    let someValue7:Int? = 5
    guard let temp = someValue7 else {
        return
    }
    print("It has some value \(temp)")
}

testFunction()

// 4. Nil-coalescing operator

// Example 7: Optional handling using nil-coalescing operator

var someValue8:Int!
var defaultValue = 5
let unwrappedValue:Int = someValue8 ?? defaultValue
print(unwrappedValue)

var someValue9:Int? = 10
let defaultValue1 = 5
let unwrappedValue2:Int = someValue9 ?? defaultValue1
print(unwrappedValue2)


func getHaterStatus() -> String {
    return "Hate"
}

func getHaterStatus1() -> String? {
    return "Hate"
}

// in swift "no value"means "nil"

func getHaterStatus2(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus2(weather: "sunny")
getHaterStatus2(weather: "stormy")

var status: String? // no ? mark
status = getHaterStatus2(weather: "rainy")
var status2 = getHaterStatus2(weather: "rainy")

func takeHaterAction(status3: String) {
    if status3 == "Hate" {
        print("Hating")
    }
}

takeHaterAction(status3: "rainy")
takeHaterAction(status3: "Hate")

if let unwrappedStatus = status {
    // unwrappedStatus contains a non-optional value!
} else {
    // in case you want an else block, here you go…
}

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}


func takeHeterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status3: haterStatus)
}


//func yearAlbumReleased(name: String) -> Int {
//    if name == "Taylor Swift" { return 2006}
//    if name == "Fearless" { return 2008}
//    if name == "Speak Now" { return 2010}
//    if name == "Red" { return 2012}
//    if name == "1989" { return 2014}
//
//    return 0
//}
//
//yearAlbumReleased(name: "Lanterm")

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006}
    if name == "Fearless" { return 2008}
    if name == "Speak Now" { return 2010}
    if name == "Red" { return 2012}
    if name == "1989" { return 2014}
    
    return nil
}

yearAlbumReleased(name: "Lanterm")

var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int {
    for i in 0...array.count {
        if array[i] == string {
            return i
        }
    }
    return 0
}

position(of: "James", in: items)
position(of: "John", in: items)
position(of: "Sally", in: items)
//position(of: "Bob", in: items)

let jamesPosition = items.firstIndex(of: "James")
let johnPosition = items.firstIndex(of: "John")
let sallyPosition = items.firstIndex(of: "Sally")
let bobPosition = items.firstIndex(of: "Bob")

func yearAlbumReleased2(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased2(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)")
}


