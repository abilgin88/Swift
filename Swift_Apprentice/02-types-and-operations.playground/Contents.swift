import UIKit
import Foundation

var integer: Int = 100
var decimal: Double = 12.5
integer = Int(decimal)

let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

let typeInferredInt = 42
let typeInferredDouble = 3.14159

let wantADouble = 3
let actuallyDouble = Double(3)
let actuallyDouble1: Double = 3
let actuallyDouble3 = 3 as Double
let wantADouble1 = 3.0

let age1 = 42
let age2 = 21
//yes

let avg1 = Double(age1) + Double(age2) / 2

// it is int, it's wrong because of they are Int,

let characterA: Character = "a"
let characterDog: Character = "🐶"
let stringDog: String = "Dog"
let stringDog1 = "Dog"

var message = "Hello" + "my name is"
let name = "Matt"
message += name

let exclamationMark: Character = "!"
message += String(exclamationMark)

message = "Hello my name is \(name)!"

let oneThird = 1.0 / 3.0

let oneThirdLongString = "One third is \(oneThird) as a decimal"

let bigString = """
You can have a string
  that contains multiple
  lines
  by
  doing this.
"""
print(bigString)


let firstName = "Abdullah"
let lastName = "Bilgin"
let fullName = firstName + " " + lastName
let myDerails = "Hello, my name is \(fullName)"

let coordinates: (Int, Int) = (2, 3)
let coordinates1 = (2, 3)
let coordinatesDouble = (2.1, 3.5)
let coordinatesMixed = (2.1, 3)

let x1 = coordinates.0
let y1 = coordinates.1

let coordinatesNamed = (x: 2, y: 3)
let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let coordinates3d = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordinates3d
let (x4, y4, _) = coordinates3d

let dateTemp: (Int, Int, Int, Double) = (08, 16, 2022, 45)
let dateTemp1 = (day: 16, month: 08, year: 2022, temp: 45)
//let day = dateTemp1.day
//let temp = dateTemp1.temp
let (day, _, _, temp) = dateTemp1

var dateTemp2 = (day: 16, month: 08, year: 2022, temp: 45)

let a: Int16 = 12
let b: UInt8 = 255
let c: Int32 = -1000000

let answer = Int(a) + Int(b) + Int(c)

typealias Animal = String
let myPet: Animal = "Dog"

typealias Coordinates = (Int, Int)
let xv:Coordinates = (2,3)

let coordinates4 = (2, 3)
let namedCoordinates = (row:2, column: 4)

//let character: Character = "Dog" // <-- Not Valid
let character6: Character = "!" // <-- Not  Valid
let string: String = "Dog"  // <-- Valid
let string2: String = "! "  // <-- Valid

let tuple = (day: 15, month: 8, year: 2015)
let day3 = tuple.day

var name5 = "Matt"
name5 += " Galloway"

let tuple2 = (100, 1.5, 10)
let value = tuple2.1

let tuple5 = (day5: 15, month5: 8, year5: 2015)
let month5 = tuple5.month5

let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"

let a5 = 4
let b5: Int32 = 100
let c5: UInt8 = 12

let result = a5 + Int(b5) - Int(c5)

Double.pi

Float.pi

let difference = Double.pi - Double(Float.pi)
