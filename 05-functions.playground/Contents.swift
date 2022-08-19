import UIKit

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

