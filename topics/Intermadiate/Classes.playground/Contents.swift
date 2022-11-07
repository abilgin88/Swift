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
//:Inheritance
// So suppose we have a BankAccount class that looks like:

class BankAccount {
    var balance = 0.0
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) {
        balance -= amount
    }
}

// And we want a new SavingsAccount class that inherits from BankAccount:
class SavingAccount: BankAccount {
    var interest = 0.0
    
    func addInterest() {
        let interest = balance * 0.005
        self.deposit(amount: interest)
    }
}

/*
 Here, the new SavingsAccount class (subclass) automatically gains all of the characteristics of BankAccount class (superclass), such as its .balance property and its .deposit() and .withdraw() methods.
 
 In addition, the SavingsAccount class defines the following:

 .interest property that stores the interest rate
 .addInterest() method that deposits the interest
 And only SavingsAccount instances will have these.
 */
var myAccount = BankAccount()

myAccount.balance = 20
print(myAccount.balance)

myAccount.deposit(amount: 20)
print(myAccount.balance)

myAccount.withdraw(amount: 10)
print(myAccount.balance)

var saveMyAccount = SavingAccount()

saveMyAccount.interest = 10
print(myAccount.balance)
print(saveMyAccount.balance)

saveMyAccount.addInterest() // balance is 0 here (balance * 0.005)
print(myAccount.balance)
print(saveMyAccount.balance)

saveMyAccount.balance = 10
print(myAccount.balance)
print(saveMyAccount.balance)

saveMyAccount.addInterest() // adding balance (10 * 0,005)
print(myAccount.balance)
print(saveMyAccount.balance)

saveMyAccount.deposit(amount: 5)
print(myAccount.balance)
print(saveMyAccount.balance)

saveMyAccount.withdraw(amount: 10)
print(myAccount.balance)
print(saveMyAccount.balance)
//:
class Order {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0

  func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Total:     $\(total)")
  }
}

class DeliveryOrder: Order {
    var deliveryFee = 2.0
}
//: Overriding Methods
// Suppose we want a new SavingsAccount class and we want to override the .withdraw() method from its superclass BankAccount:


class BankAccount2 {
    var balance = 0.0
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) {
        balance -= amount
    }
}

class SavingAccount2: BankAccount2 {
    var interest  = 0.0
    var numWithdraw = 0
    
    func addInterest() {
        let interest = 0.0
        self.deposit(amount: interest)
    }
    
    override func withdraw(amount: Double) {
        balance -= amount
        numWithdraw += 1
    }
}
var saveMyAccount2 = SavingAccount2()
saveMyAccount2.withdraw(amount: 10)
print(saveMyAccount2.numWithdraw)
saveMyAccount2.numWithdraw = 10
print(saveMyAccount2.interest)
saveMyAccount2.withdraw(amount: 10)
print(saveMyAccount2.numWithdraw)
//:
class Order3 {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0

  func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Total:     $\(total)")
  }
}

class DeliveryOrder3: Order3 {
  var deliveryFee = 2.0
  
  // Write your code below 🧾
  
override func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Delivery:  $\(deliveryFee)")
    print("Total:     $\(total)")
  }
  
}

var order4 = DeliveryOrder3()
order4.items = ["Ramen", "Diet Coke"]
order4.subtotal = 14.69
order4.tip = 2.00
order4.deliveryFee = 3.00
order4.total = 19.69

order4.printReceipt()
