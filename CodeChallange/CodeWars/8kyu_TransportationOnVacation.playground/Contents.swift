import UIKit
/*
 
 After a hard quarter in the office you decide to get some rest on a vacation. So you will book a flight for you and your girlfriend and try to leave all the mess behind you.

 You will need a rental car in order for you to get around in your vacation. The manager of the car rental makes you some good offers.

 Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.

 Write a code that gives out the total amount for different days(d).
 
 
 */
//:
// My solution:
func RentalCarCost(_ days: Int) -> Int {
  switch days {
    case 1...2:
    return days * 40
     case 3...6:
    return (days * 40) - 20
      case _ where days >= 7:
    return (days * 40) - 50
    default:
      return days
  }
}
RentalCarCost(12)
//:
func RentalCarCost1(_ days: Int) -> Int {
    let cost = days * 40
    let discount = days >= 7 ? 50 : 20
    return days >= 3 ? cost - discount : cost
}
RentalCarCost1(12)
//:
func RentalCarCost2(_ days: Int) -> Int {
    let rentCostPerDay = 40
    var total = days * rentCostPerDay
    if days >= 7 {
        total -= 50
    } else if days >= 3 {
        total -= 20
    }
    return total
}
RentalCarCost2(12)
//:
func RentalCarCost3(_ days: Int) -> Int {
    let x = 40
    switch days {
    case 0...2:
        return x * days
    case 3...6:
        return (x * days) - 20
    default:
        return (x * days) - 50
    }
}
RentalCarCost3(12)
//:
func RentalCarCost4(_ days: Int) -> Int {
    var finalCost = 0
    finalCost = days * 40
    if days >= 7 {
        finalCost -= 50
    } else if days >= 3 {
        finalCost -= 20
    }
    return finalCost
}
RentalCarCost4(12)
//:
func RentalCarCost5(_ days: Int) -> Int {
    let amount = days * 40
    return days >= 7 ? amount - 50 : days >= 3 ? amount - 20 : amount
}
RentalCarCost5(12)
//:
func RentalCarCost6(_ days: Int) -> Int {
    return 40 * days - (days >= 7 ? 50 : days >= 3 ? 20 : 0)
}
RentalCarCost6(12)
//:
func RentalCarCost7(_ days: Int) -> Int {
    let costPerDay = 40
    let total = days * costPerDay
    let discount: Int
    switch days {
        case 0..<3: discount = 0
        case 3..<7: discount = 20
        case 7...: discount = 50
        default: fatalError("invalid Days")
    }
    return total - discount
}
RentalCarCost7(12)
//:
func RentalCarCost8(_ days: Int) -> Int {
    let discount = days <= 2 ? 0 : days <= 6 ? 20 : 50
    return (days * 40 - discount)
}
RentalCarCost8(12)
