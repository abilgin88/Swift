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

//:Using Read-only Computed Properties
struct Cat3 {
    private var numberOfLives: Int
    
    init(numberOfLives: Int) {
        self.numberOfLives = numberOfLives
    }
    
    // declare doubledLife as an Int type.
    var doubledLife: Int {
        //The get keyword defines the getter.
        get {
            //The return keyword ends the scope of the getter and returns a final value.
            return numberOfLives * 2
        }
    }
}

/* A read-only computed property can be handy in cases where you want to safely give read access to some property but want to be sure it can’t be modified. */

let c = Cat3(numberOfLives: 10)
//print(c.numberOfLives)
print(c.doubledLife)
//:
struct Office3 {
    
    let paperclipCost = 10
    private var paperclipSales: Int
    
    // create a Read-only Computed Property below
    var totalRevenue: Int {
        get {
            return (paperclipCost * paperclipSales) + getSecretRevenue()
        }
    }
    
    // there is private variable need init
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

let alphaOffice3 = Office3(paperclipSales: 18)
print(alphaOffice3.totalRevenue)
//: Creating Setters for Computed Properties
struct Cat4 {
    
    private var numberOfLives: Int
    
    init(numberOfLives: Int) {
        self.numberOfLives = numberOfLives
    }
    
    var doubledLife: Int {
        get {
            return numberOfLives * 2
        }
        set(newDoubledLife) {
            numberOfLives = newDoubledLife / 2
        }
    }
}

var setTest = Cat4(numberOfLives: 10)
setTest.doubledLife
setTest.doubledLife = 30
print(setTest.doubledLife)// means by set change
// try to without set?
//Result: Cannot assign to property: 'doubledLife' is a get-only property
//:
// shorthand Form-1: remove "return" for get
struct Cat5 {
    private var numberOfLives: Int
    
    init(numberOfLives: Int){
        self.numberOfLives = numberOfLives
    }
    
    var doubledLife: Int {
        get {
            numberOfLives * 2
        }
        set(newDoubledLife) {
            numberOfLives = newDoubledLife / 2
        }
    }
}
// shorthand Form-2:  omit the passed parameter on the setter and use the default newValue that is provided to us:
struct Cat6 {
    private var numberOfLives: Int
    
    init(numberOfLives: Int){
        self.numberOfLives = numberOfLives
    }
    
    var doubledLife: Int {
        get {
            numberOfLives * 2
        }
        set {
            numberOfLives = newValue / 2
        }
    }
}

var shorthand = Cat6(numberOfLives: 15)
print(shorthand.doubledLife)
shorthand.doubledLife = 40
print(shorthand.doubledLife)
//:Example
struct Office4 {
    let paperclipCost = 10
    private var paperclipSales: Int
    
    var totalRevenue: Int {
        get {
            (paperclipCost * paperclipSales) + getSecretRevenue()
        }
        set {
            paperclipSales = (newValue - getSecretRevenue()) / paperclipCost
        }
    }
    
    
    
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

var alphaOffice4 = Office4(paperclipSales: 18)
alphaOffice4.totalRevenue
alphaOffice4.printTotalRevenue()
//alphaOffice4.totalRevenue = 100 (before add get-set)
//Cannot assign to property: 'totalRevenue' is a get-only property
alphaOffice4.totalRevenue = 100
alphaOffice4.printTotalRevenue()
