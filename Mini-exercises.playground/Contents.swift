import UIKit
//:Declare a constant of type Int called myAge and set it to your age.
let myAge: Int = 34
//:Declare a variable of type Double called averageAge. Initially, set it to your own age. Then, set it to the average of your age and my own age of 30.
var averageAge:Double = Double(myAge)
var yourAge: Double = 30
averageAge = (Double(myAge) + yourAge) / 2

// another solution
var averageAge1: Double = 34
averageAge1 = (averageAge + 30) / 2
//: Create a constant called testNumber and initialize it with whatever integer you’d like. Next, create another constant called evenOdd and set it equal to testNumber modulo 2. Now change testNumber to various numbers. What do you notice about evenOdd?
let testNumber = 34
let evenOdd = testNumber % 2
// can not change test number

// another solution
let testNumber1:Int = 34
let evenOdd1:Int = testNumber % 2
// 'evenOdd1' is 0 when 'testNumber1' is even. 'evenOdd1' is 1 when 'testNumber1' is odd

//: Create a variable called answer and initialize it with the value 0. Increment it by 1. Add 10 to it. Multiply it by 10. Then, shift it to the right by 3. After all of these operations, what’s the answer?
var answer = 0
answer += 1
answer += 10
answer *= 10
answer >> 3
