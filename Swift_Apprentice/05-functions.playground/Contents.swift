import UIKit
import Darwin

//: Function basics
// function declaration
func printMyName() {
    print("My name is Abdullah")
}

printMyName()

//:Function parameters
func printMultipleOfFive(value: Int) {
    print("\(value) * 5 = \(value * 5)")
}

printMultipleOfFive(value: 5)

/* Note: Take care not to confuse the terms “parameter” and “argument”. A function declares its parameters in its parameter list. When you call a function, you provide values as arguments for the functions’ parameters.*/

func printMultipleOf(multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(multiplier: 10, andValue: 4)

//: external name
func printMultipleOf(multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(multiplier: 4, and: 4)

/* If you want to have no external name at all, then you can employ the underscore _, as you’ve seen in previous chapters:*/

func printMultipleOf(_ multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(4, and: 4)

/* You could, if you so wished, take this even further and use _ for all parameters, like*/

func printMultipleOf(_ multiplier: Int, _ value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(4, 4)

/* You can also give default values to parameters:*/

func printMultipleOf1(_ multiplier: Int, _ value: Int = 1) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf1(4)
printMultipleOf1(4,3)

//: Return values
func multiply(_ number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}
let result = multiply(4, by: 3)

//

func multipleAndDivide(_ number: Int, by factor: Int)
-> (product: Int, quotient: Int) {
    return (number * factor, number / factor)
}

let result1 = multipleAndDivide(4, by: 2)
let product = result1.product
let quotient = result1.quotient


// single statement <--  no need return

func multiply2(_ number: Int, by multiplier: Int) -> Int {
    number * multiplier
}

func multiplyAndDivide(_ number: Int, by factor:Int)
-> (product: Int, quotient: Int) {
    (number * factor , number / factor)
}

//: Advanced parameter handling
/*Function parameters are constants, which means they can’t be modified.*/
func incrementAndPrint(_ value : Int) {
    //value += 1
    print(value)
}

incrementAndPrint(5)

/* It is important to note that Swift copies the value before passing it to the function, a behavior known as pass-by-value.*/

/* Sometimes you do want to let a function change a parameter directly, a behavior known as copy-in copy-out or call by value result. You do it like so:*/

func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

var value = 5
incrementAndPrint(&value)
print(value)

//: Overloading
func getValue() -> Int {
    32
}

func getValue() -> String {
    "Abdullah Bilgin"
}

// let value = getValue() <--    error: ambiguous use of 'getValue()'

let valueInt: Int = getValue()
let valueString: String = getValue()

//: Mini-exercises
/* Write a function named printFullName that takes two strings called firstName and lastName. The function should print out the full name defined as firstName + " " + lastName. Use it to print out your own full name.*/

func printFullName(firstName: String, lastName: String) -> String {
    firstName + " " + lastName
}

printFullName(firstName: "Abdullah", lastName: "Bilgin")

/* Change the declaration of printFullName to have no external name for either parameter.*/

func printFullName(_ firstName: String, _ lastName: String) -> String {
    firstName + " " + lastName
}

printFullName("Abdullah", "Bilgin")

/* . Write a function named calculateFullName that returns the full name as a string. Use it to store your own full name in a constant.*/

func calculateFullName(_ firstName:String, _ lastName:String)
-> String {
    firstName + " " + lastName
}

let myFullName = calculateFullName("Abdullah", "Bilgin")


/* Change calculateFullName to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the count property. Use this function to determine the length of your own full name.
*/

func calculateFullName2(_ firstName:String, _ lastName:String)
-> (name: String, lenght: Int) {
    let fullName = firstName + " " + lastName
    
    return (fullName, fullName.count)

}

let fullNameLength = calculateFullName2("Abdullah", "Bilgin").lenght

//: Functions as variables
func add(_ a: Int, _ b: Int) -> Int {
    a + b
}

var function = add
function(2,4)

func subtract(_ a:Int, _ b: Int) -> Int {
    a - b
}

function = subtract
function(4,2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b:Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 4, 2)

//: The land of no return
func noReturn() -> Never{
    while true {
        
    }
}

//: Writing good functions
/*
 Make functions that are easy to use and understand! Give them well-defined inputs that produce the same output every time. You’ll find it’s easier to reason about and test good, clean, simple functions in isolation.
*/

//:Commenting your functions
/* It uses the defacto Doxygen commenting standard used by many other languages outside of Swift*/

///  Calculate the average of three values
///  - Parameters:
///  - a: The first value.
///  - b:    The second value.
///  - c:    The third value.
/// - Returns: The average of the three values.

func calculateAverage(of a: Double, and b: Double, and c: Double)
-> Double {
    let total = a + b + c
    let average = total / 3
    return average
}

calculateAverage(of: 4, and: 5, and: 3)

/* Xcode shows your documentation when code completion comes up,*/

/* you can hold the option key and click on the function name, and Xcode shows your documentation in a handy popover*/

//:Challenges
//:Challenge 1: Looping with stride functions
/* In Chapter 4, “Advanced Control Flow”, you wrote some for loops with countable ranges. Countable ranges are limited in that they must always be increasing by one. The Swift stride(from:to:by:) and stride(from:through:by:) functions let you loop much more flexibly.

For example, if you wanted to loop from 10 to 20 by 4’s you can write:
 
for index in stride(from: 10, to: 22, by: 4) {
 print(index)
}
 
// prints 10, 14, 18
 
for index in stride(from: 10, through: 22, by: 4) {
 print(index)
}
 
// prints 10, 14, 18, and 22
 
• What is the difference between the two stride function overloads?
• Write a loop that goes from 10.0 to (and including) 9.0, decrementing by 0.1.
*/

// --> the difference between the to and through is like 10...30 and 10..<30

for index in stride(from: 10.0, through: 9.0, by: -0.1) {
    print(index)
}

//:Challenge 2: It’s prime time
/*
 When I’m acquainting myself with a programming language, one of the first things I do is write a function to determine whether or not a number is prime. That’s your second challenge.
 
 */

func isNumberDivisible(_ number:Int, by divisor: Int) -> Bool {
    number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    if number <= 0 {
        return false
    }
    for i in 2..<number {
        if isNumberDivisible(number, by: i) {
        return false
        }
    }
    return true
}

isPrime(-3)
isPrime(0)
isPrime(6) // false
isPrime(13) // true
isPrime(8893) // true
isPrime(9)


// another solution

func isNumberDivisible2(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}

func isPrime2(_ number: Int) -> Bool {
    if number < 0 {
        return false
    }
    
    if number <= 3 {
        return true
    }
    
    let doubleNumber = Double(number)
    let root = Int(doubleNumber.squareRoot())
    for divisor in 2...root {
        if isNumberDivisible2(number, by: divisor){
            return false
        }
            
    }
    return true
}

isPrime(6)
isPrime(13)
isPrime(8893)

//:Challenge 3: Recursive functions
/*
 
 In this challenge, you will see what happens when a function calls itself, a behavior called recursion. This may sound unusual, but it can be quite useful.
 You’re going to write a function that computes a value from the Fibonacci sequence. Any value in the sequence is the sum of the previous two values. The sequence is defined such that the first two values equal 1. That is, fibonacci(1) = 1 and fibonacci(2) = 1.
 Write your function using the following declaration:
 func fibonacci(_ number: Int) -> Int
 Then, verify you’ve written the function correctly by executing it with the following
 numbers:
 Hint 1: For values of number less than 0, you should return 0.
 Hint 2: To start the sequence, hard-code a return value of 1 when number equals 1 or
 2.
 Hint 3: For any other value, you’ll need to return the sum of calling fibonacci with
 number - 1 and number - 2.
 fibonacci(1)  // = 1
 fibonacci(2)  // = 1
 fibonacci(3)  // = 2
 fibonacci(4)  // = 3
 fibonacci(5)  // = 5
 fibonacci(10) // = 55
 
 */


func fibonacci(_ number: Int) -> Int {
    if number <= 0 {
        return 0
    }
    if number == 1 || number == 2 {
        return 1
    }
    
    return fibonacci(number - 1) + fibonacci(number - 2)
}

//fibonacci(0)
//fibonacci(1)
//fibonacci(2)
//fibonacci(3)
//fibonacci(4)
fibonacci(5)
//fibonacci(10)

func test(_ number2: Int) -> Int {
    if number2 == 1 {
        return 1
    }
    
    return test(number2 - 1) + test(number2 - 1)
}

test(4)


