import UIKit

// Debugging with Assertions

let age = 10

assert(age >= 0, "A person's age can't be less than zero.")

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
}else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

// Enforcing Preconditions
// in the implementation of a subscript....

let index = 10
precondition(index > 0, "index must be greater than zero")


// assert --> Use assert() regularly; it costs nothing and will help you.


//var numbers: [Int] = []
var numbers: [Int] = [1,2,3]

func sum(of numbers: [Int]) -> Int {
    assert(numbers.count > 0, "This should be given some numbers to sum")
    return numbers.reduce(0, +)
}

sum(of: numbers)

// assert(reallySlowFunction)() == true, "Slow function returned an incorrect value"

// assertionFailure() --> Use assertionFailure() for situations where you know your code won’t be reached, for example if you’ve written a switch statement and need to put something in default even though you know it won’t be reached because all other cases are covered.



let number = Int.random(in: 1...3)

switch number {
case 1:
    print("You rolled a one!")
case 2:
    print("You rolled a two!")
case 3:
    print("You rolled a three!")
default:
    assertionFailure("Rolling a 3-sided dice shouldn't have any other results.")
}

// precondition() --> Use precondition() when you need to be absolutely sure the state of your program is what you expect before continuing, even when running on user devices.

extension Array {
    mutating func removeRandom(_ number: Int) {
        precondition(count >= number, "Can't remove \(number) items from an array with count \(count)")
        
        for _ in 0...number {
            remove(at: Int.random(in: 0..<count))
        }
    }
}

