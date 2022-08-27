import UIKit

//:My solution:
func switchItUp(_ number: Int) -> String {
  switch number {
    case 1:
      return "One"
    case 2:
      return "Two"
    case 3:
      return "Three"
    case 4:
      return "Four"
    case 5:
      return "Five"
    case 6:
      return "Six"
    case 7:
      return "Seven"
    case 8:
      return "Eight"
    case 9:
      return "Nine"
    default:
      return "Zero"
  }

}

switchItUp(5)

//:1
func switchItUp1(_ number: Int) -> String {
  return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
}

switchItUp1(5)

//:2
func switchItUp2(_ number: Int) -> String {
    let array = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    return array[number]
}
switchItUp2(5)
//:3
func switchItUp3(_ number:Int) -> String {
    switch number {
    case 0...9: return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
    case _: return "\(number)"
    }
}
switchItUp3(11) // include out of range
//:4
func switchItUp4(_ number: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = NumberFormatter.Style.spellOut
    return formatter.string(from: NSNumber(value: number))!.capitalized
}
switchItUp4(5)
switchItUp4(12)
//:5
func switchItUp5(_ number: Int) -> String {
    return NumberFormatter.localizedString(from: number as NSNumber, number:  .spellOut).capitalized
}
switchItUp5(5)
switchItUp5(12)
//:6
