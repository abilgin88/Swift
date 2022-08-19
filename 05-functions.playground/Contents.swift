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

