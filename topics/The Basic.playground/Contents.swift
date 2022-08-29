import UIKit


let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

// type Annotation

var welcomeMessage: String

welcomeMessage = "Hello"

var red, green, blue: Double

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjor"

let languageName = "Swift"
// languageName = "Swift++"

print(friendlyWelcome)

print("The current value of friendlyWelcome is \(friendlyWelcome)")

// this is  a comment

/* this is also a comment
 but is wwritten over multiple lines*/

/* This is the start of the time multiline comment.
 /* This is the second, nested multiline comment */
 This is the end of the first multiline comment. */


let cat = "kat" ; print(cat)
    
let minValue = UInt8.min
let maxValue = UInt8.max

let meaningoflife = 42
let pi = 3.14159
let anotherPi = 3 + 0.14159

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion =  1_000_000
let justOverOneMillion = 1_000_000.000_000

//let cannotBeNegative: UInt8 = -1
// UInt8 can't store negative numbers, and so this will report an error

//let tooBig: Int8 = Int8.max + 1
// Int8 can't store a number larger than its maximum value,
// and so this will also report an error
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandandOne = twoThousand + UInt16(one)

let three = 3
let pointOneForOneFiveNine = 0.14159
let pi1 = Double(three) + pointOneForOneFiveNine

let integerPi = Int(pi1)

typealias AudioSample = UInt16

var maxSmplitudeFound = AudioSample.min


let orangesAreOrange = true
let turnipAreDelicious = false

if turnipAreDelicious {
    print("Mmm, tasty turnips")
} else {
    print("Eww, turnip are horrible")
}

let i = 1
//
//if i {
//
//}

if i == 1 {
    print("ok")
}

let http404Error = (404, "Not found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("the status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

