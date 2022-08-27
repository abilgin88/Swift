import UIKit

func squareSum(_ vals: [Int]) -> Int {
    var result = 0
    for i in vals {
        result += i * i
    }
  return result
}

squareSum([-3, -4, 0])
//:1
func squareSum1(_ vals: [Int]) -> Int {
    return vals.reduce(0) {$0 + $1 * $1}
}
squareSum1([-3, -4, 0])
//:2
func squareSum2(_ vals: [Int]) -> Int {
    vals.map{ $0 * $0}.reduce(0, +)
}
squareSum2([-3, -4, 0])
