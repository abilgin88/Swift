import UIKit

//: Structures
//:What is a Structure
//:Creating a Structure
struct Name {
    //properties
}
//:
struct Dog {
    var age: Int
    var isGood: Bool
}
// singular names "Dog" instead of "Dogs"
// has two properties = type variables( var age: Int)
//:
struct Book {
    var title: String
    var pages: Int
}
//: Default Property Values
struct Dog2 {
    var age = 0
    var isGood = true
}
//:
struct Book2 {
    var title = ""
    var pages = 0
}
//:
struct Car {
    var numberOfWheels = 4
    var topSpeed = 80
}

var reliantRobin = Car(numberOfWheels: 3)
print(reliantRobin.numberOfWheels) // Not default property value
print(reliantRobin.topSpeed) // default property value
