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
