import UIKit

/*
 DESCRIPTION:

 Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero numbers.

 Examples:
 1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
 2) n =  12, x = 2, y = 6 =>  true because  12 is divisible by 2 and 6
 3) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3
 4) n =  12, x = 7, y = 5 => false because  12 is neither divisible by 7 nor 5
 */

// My Solution:

func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    (n % x == 0 && n % y == 0) ? true : false
}

isDivisible(100, 5, 3)
isDivisible(12, 2, 6)
//:1
func isDivisible1(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return n % x == 0 && n % y == 0
}
isDivisible1(100, 5, 3)
isDivisible1(12, 2, 6)
//:2
func isDivisible2(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return n.isMultiple(of: x) && n.isMultiple(of: y)
}
isDivisible2(100, 5, 3)
isDivisible2(12, 2, 6)
//:3
func isDivisible3(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return n % x + n % y == 0
}
isDivisible3(100, 5, 3)
isDivisible2(12, 2, 6)
//:4
func isDivisible4(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return (n % x) == .zero && (n % y) == .zero
}
isDivisible4(100, 5, 3)
isDivisible4(12, 2, 6)
