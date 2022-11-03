import UIKit
//:Introducing Access Control in Swift

//:Levels of Access
struct Cat {
    public func speak() {
        print("Meeeeoooowww")
    }
    
    internal let color = "Black"
    
    fileprivate var age : Int = 2
    
    private var type = "Ragdoll"
    
    func a() {
        print(type)
    }
    
}

let scrambles = Cat()

// Could call this from other modules
scrambles.speak()

// Could call this from anywhere within the module
print(scrambles.color)

// Can call this only within this file
print(scrambles.age)

// This is invalid because type is inaccessible outside of the Cat structure
//print(scrambles.type)

// but here i can call a func to print type. because i print type in struct cat() means i can access to it
scrambles.a()
//:Defining a Private Property
struct Cat2 {
    
    private var numberOfLives = 9
    
    /* private properties must have an explicit init() method in order to initialize their value when
    creating an instance Otherwise, they must be optional or have a default value.*/
    
    init(numberOfLives: Int) {
        self.numberOfLives = numberOfLives
    }
    
    // Since a cat can only lose one life at a time, it makes sense to make the numberOfLives property private
    
    mutating func loseOneLife() {
        self.numberOfLives -= 1

        print(numberOfLives)
    }
    // struct method that changes the value of one of its properties must be marked mutating.
}

var scrambles2 = Cat2(numberOfLives: 9)
scrambles2.loseOneLife()

//:
struct Office {
    let paperclipCost = 10
    private var paperclipSales: Int
    
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    mutating func printTotalRevenue() {
        let totalRevenue = paperclipSales * paperclipCost
        print("Our total revenue this month is \(totalRevenue)")
    }
}
var alphaOffice = Office(paperclipSales: 18)
alphaOffice.printTotalRevenue()
alphaOffice.paperclipCost

//let incalidAccess = alphaOffice.paperclipSales

// 'paperclipSales' is inaccessible due to 'private' protection level
//:Defining a Private Method
struct WizardCat {
    func secretSpell() -> String{
        "Abracadabra"
    }
}
var noPrivateCat = WizardCat()
noPrivateCat.secretSpell()

struct WizartCat1 {
    private func secretSpell() -> String {
        "Abracadabra"
    }
}
var privateCat = WizartCat1()
// privateCat.secretSpell()
// 'secretSpell' is inaccessible due to 'private' protection level

struct Office1 {
    let paperclipCost = 10
    private var paperclipSales: Int
    
    // no default and private need to have init
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    // Create a private method
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    // no need mutating here because it does not change any value
    func printTotalRevenue() {
        
        //Add the secret revenue to totalRevenue
        
        let totalRevenue = (paperclipSales *
        paperclipCost) + getSecretRevenue()
        print("Our total revenue this month is \(totalRevenue).")
    }
          
          
}

let alphaOffice2 = Office1(paperclipSales: 18)

alphaOffice2.paperclipCost
//alphaOffice2.paperclipSales
alphaOffice2.printTotalRevenue()
// Attempt to call the private method
//alphaOffice2.getSecretRevenue()

