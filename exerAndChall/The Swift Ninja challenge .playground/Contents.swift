import UIKit

//: The Swift Ninja challenge
//:Challenge #1
/*
 
 In the Swift book from Apple, there are several examples of a function that swaps the values of two variables. The code always uses the “classic” solution of using an extra variable for storage. But you can do better than that.
 Your first challenge is to write a function that takes two variables (of any type) as parameters and swaps their values.
 Requirements:
 For the function body use a single line of code
 Give yourself 3shurikens if you don’t have to crack open the Hints or Tutorial spoilers.
 */

func swapParameter(a1: Int, b1:Int) -> (Int, Int) {
    return (b1, a1)
}

swapParameter(a1: 4, b1: 3)


// another solution from ninja doc:

var a2 = "Abdullah"
var b2 = "Bilgin"
var myTuple = (a2, b2)

var name: String
var family: String

//(name, family) = ("Abdullah" , "Bilgin")
//
//fun swap<T>(inout a:T, inout with b:T) {
//    (a, b) = (b, a)
//}
//
//// demo code
//var a = "Abdullah", b = "Bilgin"
//swap(&a, &b)
//
//[a, b]
