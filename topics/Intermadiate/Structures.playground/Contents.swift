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
//:
struct Building {
    var address: String
    var floors: Int
    
    init(address: String, floors: Int, color: String) {
        self.address = address
        self.floors = floors
    }
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
//: Creating an Instance
// 1- we modeled some god traits dog have
struct Dog3 {
    var age = 0
    var isGood = true
}

/*
 2- each dog is unique in their own way to represent this programmatically,
 we have to create different instance of dogs.
 */
var eloise = Dog3()
//:
struct Book3 {
    var pages = 0
    var title = ""
}
//instance of Book3
var myFavBook = Book3()
//:
//:
struct Person {
    var name: String
    var age: Int
    
    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// instance of Person
var morty = Person(name: "Morty", age: 14)
