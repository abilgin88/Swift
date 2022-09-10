import UIKit

/*
 DESCRIPTION:
 Given an array of integers, return a new array with each value doubled.
 
 For example:
 [1, 2, 3] --> [2, 4, 6]
 */
//: My Solution
func maps(a : Array<Int>) -> Array<Int> {
  var array = [Int]()
  for i in a {
    array.append(i * 2)
  }
  return array
}
maps(a: [2, 4, 6])
//:
func maps1(a : Array<Int>) -> Array<Int> {
    return a.map { $0 * 2}
}
maps1(a: [2, 4, 6])
//:
func maps2(a : Array<Int>) -> Array<Int> {
    var b = a
    for i in 0..<a.count {
        b[i] = a[i] * 2
    }
    return b
}
maps2(a: [2, 4, 6])
//:
func maps3(a : Array<Int>) -> Array<Int> {
    return a.map({ (n)-> Int in n * 2})
}
maps3(a: [2, 4, 6])
//:
func maps4(a : Array<Int>) -> Array<Int> {
    func mappy(n: Int) -> Int {
        return n * 2
    }
    return a.map(mappy)
}
maps4(a: [2, 4, 6])
//:
func maps5(a : Array<Int>) -> Array<Int> {
    return a.map { (obj) -> Int in
        obj * 2
    }
}
maps5(a: [2, 4, 6])
//:
func maps6(a : Array<Int>) -> Array<Int> {
    let count = a.map {$0 + $0}
    return count
}
maps6(a: [2, 4, 6])
