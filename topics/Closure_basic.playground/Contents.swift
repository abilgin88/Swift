import UIKit
//: Closure basics
var multiplyClousure: (Int, Int) -> Int
//:
var multiplyClousure1 = { (a: Int, b: Int) -> Int in
    return a + b
}
let result = multiplyClousure1(4,2)
//:Shorthand syntax
multiplyClousure1 = { (a: Int, b: Int) -> Int in
    a * b
}
//:
multiplyClousure1 = { (a, b) in
    a * b
}
//:
multiplyClousure1 = {
    $0 * $1
}
//:
func operateOnNumbers(_ a: Int, _ b: Int,
                      operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    print(result)
    return result
}
//:
let addClosure = { (a: Int, b: Int) in
    a + b
}
operateOnNumbers(4, 2, operation: addClosure)
//:
func addFunction(_ a: Int, _ b:Int) -> Int {
    a + b
}
operateOnNumbers(4, 2, operation: addFunction)
//:
operateOnNumbers(4, 2, operation: {(a: Int, b: Int) -> Int in
    return a + b
})
//:
operateOnNumbers(4, 2, operation: {$0 + $1})
//:
operateOnNumbers(4, 2, operation: +)
//:
operateOnNumbers(4, 2) {
    $0 + $1
}
//:Multiple trailing closures syntax
func sequenced(fist: () -> Void, second: () -> Void) {
    fist()
    second()
}
//:
sequenced {
    print("Hello, ", terminator: "")
} second: {
    print("word.")
}
/* If you ever forget how to call a function with a closure, Xcode can help you. Type in the method’s name (or code complete it) and press the return key twice. The code completion function will fill out trailing closure syntax for you. */
//:Closures with no return value
let voidClosure: () -> Void = {
    print("Swift Apprentice is awesome!")
}
voidClosure()

/* Void is actually just a typealias for (). This means you could have written () -> Void as () -> (). A function’s parameter list however must always be surrounded by parentheses, so Void -> () or Void -> Void are invalid.*/
//:Capturing from the enclosing scope
/* Recall that scope defines the range in which an entity (variable, constant, etc.) is accessible. You saw a new scope introduced with if- statements. Closures also introduce a new scope and inherit all entities visible to the scope in which it is defined. */
var counter = 0
let increment
