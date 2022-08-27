import UIKit

func isDivisible(n: Int, x: Int, y: Int) -> Bool {
    n % x == 0 && n % y == 0
}

isDivisible(n: 12, x: 3, y: 4)

func switchItUp(_ number: Int) -> String {
    return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
}
switchItUp(1)

[1, 3, 5, 7][3]
[1, 3, 5, 7][1]
[1, 3, 5, 7][0]


func switchItUp(_ number: Int) -> String {
    let array = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    return array[number]
}
switchItUp(<#T##number: Int##Int#>)
