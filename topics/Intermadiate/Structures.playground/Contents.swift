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
//:Accessing and Editing Properties
// Syntax: instance.property

// Modeled:
struct Dog4 {
    var age = 0
    var isGood = true
}

// create instance:
var bucket = Dog4()

// print default properties:
print(bucket.age)
print(bucket.isGood)

// reassign properties:
bucket.age = 7
bucket.isGood = false
print(bucket.age, bucket.isGood)
//:
struct Book4 {
    var pages = 0
    var title = ""
}
var myFavBook4 = Book4()

print(myFavBook4.pages)
myFavBook4.pages = 640

print(myFavBook4.title)
myFavBook4.title = "Gandhi"
print(myFavBook4.title)
//: The Init Method

struct Dog5 {
    var age: Int
    var isGood: Bool
    
    init(age: Int, isGood: Bool) {
        self.age = age
        self.isGood = isGood
    }
}

// Using init() Method:
var bucket5 = Dog5(age: 4, isGood: true)
print(bucket5.age)
print(bucket5.isGood)
//:
struct Book5 {
    var title: String
    var pages: Int
    
    init(title: String, pages: Int) {
        self.title = title
        self.pages = pages
    }
}

var theHobbit = Book5(title: "The Hobbit", pages: 300)
print(theHobbit.title)
//:
struct TV {
    var screenSize: Int
    var displayType: String
    
    init(screenSize: Int, displayType: String) {
        self.screenSize = screenSize
        self.displayType = displayType
    }
}

var newTV = TV(screenSize: 65, displayType: "LED")
//:Memberwise Initialization
// to assign values upon instance creation.
struct Dog6 {
    var age: Int
    var isGood: Bool
}

var eloise6 = Dog6(age: 5, isGood: true)
/*
 1: there is no init but we still have to provide arguments for all the initial values.
 2: pass in arguments in the order that matches the structure
 3: without init (decreased readability) -> initializing instance
 4: do not need to manipulate the provided argument.
 */

struct Band {
    var genre: String
    var members: Int
    var isActive: Bool
}

var maroon5 = Band(genre: "pop", members: 5, isActive: true)
