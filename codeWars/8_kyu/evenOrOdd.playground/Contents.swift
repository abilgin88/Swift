import UIKit

func evenOrOdd(_ number:Int) -> String {
  number % 2 == 0 ? "Even" : "Odd"
}

evenOrOdd(23)
//:
func evenOrOdd1(_ number: Int) -> String {
    return number % 2 == 0 ? "Even" : "Odd"
}
evenOrOdd1(23)
//:
func evenOrOdd2(_ n:Int) -> String {
    return n.isMultiple(of: 2) ? "Even" : "Odd"
}
evenOrOdd2(23)
//:
func evenOrOdd3(_ number:Int) -> String {
    return number.isEven()
}

extension Int {
    func isEven() -> String {
        return self % 2 == 0 ? "Even" : "Odd"
    }
}

evenOrOdd3(23)
//:
func evenOrOdd4(_ number:Int) -> String {
    if (number % 2 == 0){
        return "Even"
    } else {
        return "Odd"
    }
}
evenOrOdd4(23)
//:
func eveOrOdd5(_ number:Int) -> String {
    let mask: Int = 1
    let lastBit = number & mask //inout "i can not understand now:(
    return lastBit != 1 ? "Even" : "Odd"
}
eveOrOdd5(23)
//:
func evenOrOdd6(_ number: Int) -> String {
    let even = "Even"
    let odd = "Odd"
    return number.isMultiple(of: 2) ? even : odd
}
evenOrOdd6(23)
//:
func evenOrOdd7(_ number: Int) -> String {
    let result = number % 2 == 0 ? "Even" : "Odd"
    return result
}
evenOrOdd7(23)
//:
func evenOrOdd8(_ number: Int) -> String {
    return ["Even", "Odd"][abs(number % 2)]
}
evenOrOdd8(23)
// what is the abs() method
let number1 = 5
abs(number1 % 2)
abs(number1 * 5)
//:
let evenOrOdd9 = {(n: Int) in ["Even", "Odd"][n & 1]}
evenOrOdd9(23)
//:
func evenOrOdd10(_ number: Int) -> String {
    guard number % 2 == 0 else { return "Odd" }
    return "Even"
}
evenOrOdd10(23)
//:
func evenOrOdd11(_ number:Int) -> String {
    return (number & 0x1) == 0 ? "Even" : "Odd"
}
evenOrOdd11(23)
