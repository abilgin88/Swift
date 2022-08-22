import UIKit
//: Introducing nil
var name = "Abdullah Bilgin"
var age = 30
var occupation = "Software Developer"
//:Sentinel values
var errorCode = 0 // 0 is a sentinel value here
// errorCode = nil <-- you can not assign nil to Int
//:Introducing optionals
var errorCode1:Int?
errorCode1 = 100
errorCode1 = nil
//:Mini-exercises
/*
 Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil.
 */
var myFavoriteSong = "hello"
var myFavoriteSong1: String?
let myFavoriteSong2: String? = "drif" // or nil
myFavoriteSong1 = nil
myFavoriteSong1 = "hello"

/*
 Create a constant called parsedInt and set it equal to Int("10"), which tries to parse the string 10 and convert it to an Int. Check the type of parsedInt using Option-Click. Why is it an optional?
 */

let parsedInt = Int("10") // <-- let parsedInt: Int? (option-click) why is it an optional = because i would assign a string instead of number, it must be optional when a string assign it will make it nil. *** returns an optional because the string may not be an integer, in which case the result will be nil

/*
 Change the string being parsed in the above exercise to a non-integer (try dog, for example). What does parsedInt equal now?

 */
let parsedInt2 = Int("dog") // here it is, it is "nil"

//:Unwrapping optionals
var result: Int? = 30
print(result)
// print(result + 1) <-- Value of optional type 'Int?' must be unwrapped to a value of type 'Int'
//:Force unwrapping
var authorName: String? = "Abdullah Bilgin"
var authorAge: Int? = 30

var unwrappedAuthorName = authorName!
print("Author is \(unwrappedAuthorName)")

authorName = nil
//print("Author is \(authorName!)")

if authorName != nil {
    print("Author is \(authorName!)")
} else {
    print("No Author")
}

//: Optional binding
if let unwrappedAuthorName = authorName {
    print("Author is \(unwrappedAuthorName)")
} else {
    print("No Author")
}

if let authorName = authorName {
    print("Author is \(authorName)")
} else {
    print("No author")
}

/* You can even unwrap multiple values at the same time, like so:*/
if let authorName = authorName,
   let authorAge = authorAge {
    print("The author is \(authorName) who is \(authorAge) years old.")
} else {
    print("No author or no age")
}

/* You can combine unwrapping multiple optionals with additional Boolean checks. For example:*/
let authorName3: String? = "Abdullah"
let authorAge3: Int? = nil

if let authorName3 = authorName3,
   let authorAge3 = authorAge3,
   authorAge3 >= 40 {
    print("The author is \(authorName3) who i \(authorAge3) years old.")
} else {
    print("No author or no age or age less than 40")
}

//:Mini-exercises
/* Using your myFavoriteSong variable from earlier, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t
 have a favorite song."
*/

var myFavoriteSong4: String? = "hello"
if let song = myFavoriteSong4 {
    print("My Favorite Song is \(song)")
} else {
    print("I don't have a favorite song")
}

/*
 Change myFavoriteSong to the opposite of what it is now. If it’s nil, set it to a
 string; if it’s a string, set it to nil. Observe how your printed result changes.
 */


var myFavoriteSong5: String? = nil
if let song = myFavoriteSong5 {
    print("My Favorite Song is \(song)")
} else {
    print("I don't have a favorite song")
}
//: Introducing guard
func guardMyCastle(name: String?) {
    guard let castleName = name else {
        print("No castle")
        return
    }
    // At this point, `castleName` is a non-optional String
    print("Your castle called \(castleName) as guarded")
}

guardMyCastle(name:"ab")

func calculateNumberOfSide(shape: String) -> Int? {
    switch shape {
    case "triangle":
        return 3
    case "Square":
        return 4
    case "Rectangle":
        return 4
    case "Pentagon":
        return 5
    case "Hexagon":
        return 6
    default:
        return nil
    }
}

calculateNumberOfSide(shape: "")

func maybePrintSides(shape: String) {
    let sides = calculateNumberOfSide(shape: shape)
    
    if let sides = sides {
        print("A \(shape) has \(sides) sides.")
    } else {
        print("I don't know the number of sides for \(shape)")
    }
    
}

maybePrintSides(shape: "triangle")

/* However the same logic could be written with a guard statement like so: */

func maybePrintSides2(shape: String) {
    guard let sides = calculateNumberOfSide(shape: shape) else {
        print("I don't know the number of sides for \(shape).")
        return
    }
    print("A \(shape) has \(sides) sides")
}

maybePrintSides(shape: "Hexagon")
maybePrintSides(shape: "sa")

//:Nil coalescing
var optionalInt: Int? = 10
var mustHaveResult = optionalInt ?? 0
optionalInt = nil
mustHaveResult = optionalInt ?? 0


var optionalInt1: Int? = 10
var mustHaveResult1: Int
if let unwrapped = optionalInt1 {
    mustHaveResult1 = unwrapped
} else {
    mustHaveResult1 = 0
}

optionalInt1 = nil
mustHaveResult1 = optionalInt1 ?? 0

//:Challenges
//:Challenge 1: You be the compiler
/* Which of the following are valid statements? */

var name7: String? = "Ray" // <-- valid
//var age7: Int = nil  // <-- is not valid
let distance7: Float = 26.7  // <-- valid
var middleName7: String? = nil  // <-- valid
//:Challenge 2: Divide and conquer
/*
 
 First, create a function that returns the number of times an integer can be divided by another integer without a remainder. The function should return nil if the division doesn’t produce a whole number. Name the function divideIfWhole.
 Then, write code that tries to unwrap the optional result of the function. There should be two cases: upon success, print "Yep, it divides \(answer) times", and upon failure, print "Not divisible :[".
 Finally, test your function:
 1. Divide 10 by 2. This should print "Yep, it divides 5 times."
 2. Divide 10 by 3. This should print "Not divisible :[."
 Hint 1: Use the following as the start of the function signature:
 func divideIfWhole(_ value: Int, by divisor: Int) You’ll need to add the return type, which will be an optional!
 Hint 2: You can use the modulo operator (%) to determine if a value is divisible by another; recall that this operation returns the remainder from the division of two numbers. For example, 10 % 2 = 0 means that 10 is divisible by 2 with no remainder, whereas 10 % 3 = 1 means that 10 is divisible by 3 with a remainder of 1.
 
 */




func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        print("Yep, it divides \(value / divisor) times.")
    return value / divisor
    }
    print( "Not divisible :[.")
    return nil
}

divideIfWhole(10, by: 2)
divideIfWhole(10, by: 3)

// Book Solution;

func divideIfWhole2(_ value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        return value / divisor
    } else {
        return nil
    }
}

if let answer = divideIfWhole2(10, by: 2) {
    print("Yep, it divides \(answer) times")
} else {
    print("Not divisible :[")
}

if let answer = divideIfWhole2(10, by: 3 ) {
    print("Yep, it divides \(answer) times")
} else {
    print("Not divisible :[")

}

//:Challenge 3: Refactor and reduce
let answer1 = divideIfWhole2(10, by: 2) ?? 0
print("It divides \(answer1) times.")

let answer2 = divideIfWhole(10, by: 3) ?? 0
print("It divides \(answer2) times.")

//:Challenge 4: Nested optionals
let number: Int??? = 10

// 1. Fully force unwrap and print number.
print(number!!!)


// 2. Optionally bind and print number with if let.

if let test = number {
    if let test1 = test {
        if let test2 = test1{
            print(test2)
        }
        
    }
}


// another solution

if let number = number {
  if let number = number {
    if let number = number {
      print(number)
    }
  }
}

// Better way of optionally binding without all the {}

if let n1 = number,
   let n2 = n1,
   let n3 = n2 {
    print(n3)
}

func printNumber(_ number: Int???) {
    guard let n1 = number, let n2 = n1, let n3 = n2 else {
        return
    }
    
print(n3)
}

printNumber(number)
