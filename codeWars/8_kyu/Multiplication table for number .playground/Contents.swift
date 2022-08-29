import UIKit

func multi_table(_ number: Int) -> String {
    var a = ""
    var i = 0
    while i < 10 {
      i += 1
      if i == 10 {
        a += "\(i) * \(number) = \(i * number)"
          break
      }
      a += "\(i) * \(number) = \(i * number)\n"
    }
    return a
}
print(multi_table(5))

//:1
func multi_table(_ number: Int) -> String {
    (1...10).map {"\($0) * \(number) = \($0 * number)"}.joined(separator: "\n")
}
print(multi_table(5))
