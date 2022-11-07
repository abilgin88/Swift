import UIKit
//:Creating Classes
// Using data types
//class Student {
//    var name: String
//    var year: Int
//    var gpa: Double
//    var honors: Bool
//}
//:
// Using default property values:
class Student {
    var name = ""
    var year = 0
    var gpa = 0.0
    var honors = false
}
//:
class Restaurant {
  var name = ""
  var type = [""]
  var rating = 0.0
  var delivery = false
}
//:
//:Creating an Instance
// creating an instance of Person
var ferris = Student()
ferris.name = "Ferris Bueller"
ferris.year = 12
ferris.gpa = 3.81
ferris.honors = false
//:
var bobsBurgers = Restaurant()
bobsBurgers.name = "Bob's Burgers"
bobsBurgers.type = ["Burgers", "Fast Food"]
bobsBurgers.rating = 3.5
bobsBurgers.delivery = true
print(bobsBurgers.name)
print(bobsBurgers.type)
print(bobsBurgers.rating)
print(bobsBurgers.delivery)
//:The Init Method
class Fruit {
    var hasSeeds = true
    var color: String
    
    init(color: String) {
        self.color = color
    }
}
let apple = Fruit(color: "red")
print(apple.hasSeeds)
print(apple.color)
//:
class Student2 {
    var name = ""
    var year = 0
    var gpa = 0.0
    var honors = false
    
    init(name: String, year: Int, gpa: Double, honors: Bool) {
        self.name = name
        self.year = year
        self.gpa = gpa
        self.honors = honors
    }
}

var bart = Student2(name: "Bart Simpson", year: 4, gpa: 0.0, honors: false)
//:
class Restaurant2 {
  var name = ""
  var type = [""]
  var rating = 0.0
  var delivery = false

  // The init() goes here 🍝
  
  init(name: String, type: [String], rating: Double, delivery: Bool) {
    self.name = name
    self.type = type
    self.rating = rating
    self.delivery = delivery
  }
}
var laRatatouille = Restaurant2(name: "La Ratatouille", type: ["French"], rating: 4.7, delivery: false)

print(laRatatouille.name)
print(laRatatouille.type)
print(laRatatouille.rating)
print(laRatatouille.delivery)
