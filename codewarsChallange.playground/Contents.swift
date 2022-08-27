import UIKit

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    return base % factor == 0
}

//checkForFactor(7,2)

func checkForFactor1(_ base: Int, _ factor: Int) -> Bool {
    return base.isMultiple(of: factor)
}

checkForFactor1(7,2)

func checkForFactor2(_ base: Int, _ factor: Int) -> Bool {
   base % factor == 0
}

checkForFactor2(7,2)

func checkForFactor3(_ base: Int, _ factor: Int) -> Bool {
    return base % factor == 0 ? true : false
}

checkForFactor3(7,2)

let checkForFactor: (_ base: Int, _ factor: Int) -> Bool = { $0 % $1 == 0 }


func great(_ name: String, _ owner: String) -> String {
  // complete this function
  return name == owner ? "Hello boss" : "Hello guest"
}
great("abdullah", "bilgin")


func great2(_ name: String, _ owner: String) -> String {
    return "Hello \(name == owner ? "boss" : "guest")"
}
