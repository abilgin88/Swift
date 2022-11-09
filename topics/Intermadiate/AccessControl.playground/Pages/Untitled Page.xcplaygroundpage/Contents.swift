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
//alphaOffice4.totalRevenue = 100 //(before add get-set)
//Cannot assign to property: 'totalRevenue' is a get-only property
alphaOffice4.totalRevenue = 400
alphaOffice4.printTotalRevenue()
//: Using Property Observers
struct Employee {
    var hourlyWage = 15 {
        willSet{
            // it will add newValue
            print("The hourly wage is about to be changed from \(hourlyWage) to \(newValue)")
        }
        didSet {
            // it will keep oldValue before change
            print("The hourly wage has been changed from \(oldValue) to \(hourlyWage)")
        }
    }
}

var codey = Employee()
codey.hourlyWage = 20
//:
struct Cat7 {
    private var numberOfLives: Int {
        // wilSet is called right before we set the property
        willSet {
            print("Uh-oh, number of lives is changing to \(newValue)")
        }
        // didSet is called right afterward
        didSet(oldLives){
            print("Welp, we don’t have \(oldLives) anymore")
        }
        
    }
    
    init(numberOfLives: Int){
        self.numberOfLives = numberOfLives
    }
    
    mutating func loseOneLive() {
        self.numberOfLives -= 1
    }
}

var scrambles7 = Cat7(numberOfLives: 9)
scrambles7.loseOneLive()
//:
struct Office5 {
    var paperclipCost = 10
    private var paperclipSales : Int {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips.")
        }
        didSet {
            print("Originally, we sold \(oldValue) paperclips.")
        }
    }
    
    var totalRevenue: Int {
        get {
            return (paperclipCost * paperclipSales) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
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

var alphaOffice5 = Office5(paperclipSales: 18)
alphaOffice5.totalRevenue = 400
alphaOffice5.printTotalRevenue()
//:Implementing a Private Setter
struct Cat8 {
    private(set) var numberOfLives: Int
}
//:
struct Cat9 {
     public private(set) var numberOfLives: Int = 9
}
var scrambles9 = Cat9()
print(scrambles9.numberOfLives)
//scrambles9.numberOfLives  = 20
// This causes a compiler error due to invalid access: Cannot assign to property: 'numberOfLives' setter is inaccessible
//:
struct User {
    private(set) var name: String
    
    mutating func updateName(to newName: String) {
        if newName != "" {
            name = newName
        }
    }
}

var currentUser = User(name: "codey")
currentUser.updateName(to: "Codey")
print(currentUser.name)

//currentUser.name = "Bob"
//Cannot assign to property: 'name' setter is inaccessible
//:
struct Office7 {
    var paperclipCost = 10
    
    //Give the paperclipSales property a private setter
    private(set) var paperclipSales: Int {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips.")
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips.")
        }
    }
    
    var totalRevenue: Int {
           get {
               return (paperclipSales * paperclipCost) + getSecretRevenue()
           }
           set(newTotalRevenue) {
               paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
           }
       }

       init(paperclipSales: Int) {
           self.paperclipSales = paperclipSales
       }
       
       private func getSecretRevenue() -> Int {
           return 100
       }
       
       func printTotalRevenue() {
           print("Our total revenue this month is \(totalRevenue).")
       }
   }

var alphaOffice7 = Office7(paperclipSales: 18)
alphaOffice7.totalRevenue = 400
alphaOffice7.printTotalRevenue()
//Print the value of paperclipSales to the console.
print(alphaOffice7.paperclipSales)
// Attempt to set the value of paperclipSales.
//alphaOffice7.paperclipSales = 10
//:Defining a Type Property
struct Cat10 {
    static var oldestCat : Int = 0
}
/*
 create a variable type property that stores the value of oldestCat. It will be updated when a specific cat breaks the age record, but it will hold true across all cats. We define a type property using the static keyword:
 */
Cat10.oldestCat = 38
print("So far the oldest cat we have seen is \(Cat10.oldestCat) years old.")
//:
//Methods can also be declared as static. These are called on the class, structure, or enumeration itself rather than an instance.

struct Cat11 {
    static func displayDescription() {
        print("Cat's are great pets!")
    }
}
Cat11.displayDescription()
//:
struct User2 {
    static var allUsers = [User2]()
    let id: Int
    init(id: Int) {
        self.id = id
        User2.allUsers.append(self)
    }
}

let userOne = User2(id: 1)
let userTwo = User2(id: 2)
let userThree = User2(id: 3)

print(User2.allUsers)
//:
struct Office8 {
    let paperclipCost = 10
    // default Static Properties
    static var paperclipSalesRecord: Int = 0
    
    private var paperclipSales: Int  {
        willSet {
          print("We adjusted the sales to \(newValue) paperclips")
          if newValue > Office8.paperclipSalesRecord {
            Office8.paperclipSalesRecord = newValue
            print(Office8.paperclipSalesRecord)
          }
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips")
        }
    }
    
    var totalRevenue : Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
    
}

var alphaOffice8 = Office8(paperclipSales: 18)
alphaOffice8.totalRevenue = 400
alphaOffice8.printTotalRevenue()

//:Extensions
struct User3 {
    let name: String
}

extension User3 {
    var description: String {
        return "This is a user named \(name)"
    }
}
User3(name: "Abdullah").description
//:
struct Cat12 {
    let name: String
    let age: Int
}

extension Cat12 {
    static let famousCats = [
        Cat12(name: "Stubbs", age: 20),
        Cat12(name: "Sweet Tart", age: 12),
        Cat12(name: "Hank the Cat", age: 13)
    
    ]
}
print(Cat12.famousCats.count)
//:
extension Int {
    var isEven: Bool {
        isMultiple(of: 2)
    }
}

let catCount = 3
print(catCount.isEven)
//:
struct Cat13 {
    let name: String
    let age: Int
}

// Extensions must not contain stored properties
extension Cat13 {
  //  var numberOfLegs: Int
}
//:
struct Cat14 {
    let name: String
    let age: Int
}

extension Cat14 {
    var numberOfLegs: Int { return 4}
}

Cat14(name: "Yeap", age: 3).numberOfLegs
//:
struct Office {
    let paperclipCost = 10
    static var paperclipSalesRecord: Int = 0
    private var paperclipSales: Int  {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips")
            if newValue > Office.paperclipSalesRecord {
              Office.paperclipSalesRecord = newValue
            }
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips")
        }
    }
    
    var totalRevenue : Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }
    private func getSecretRevenue() -> Int {
        return 100
    }
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

// Write your extension here:

struct Office9 {
    let paperclipCost = 10
    static var paperclipSalesRecord: Int = 0
    private var paperclipSales: Int  {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips")
            if newValue > Office9.paperclipSalesRecord {
              Office9.paperclipSalesRecord = newValue
            }
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips")
        }
    }
    
    var totalRevenue : Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }
    private func getSecretRevenue() -> Int {
        return 100
    }
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

// Write your extension here:

extension Office9 {
  static func printCurrentRecord() {
    print("The current record for paperclip sales is \(paperclipSalesRecord)")
  }

  var paperclipColor: String {return "gray"}

}

var alphaOffice9 = Office9(paperclipSales: 18)
alphaOffice9.totalRevenue = 400

// Use the new methods and properties here:
Office9.printCurrentRecord()
print("Alpha Office’s paperclips are \(alphaOffice9.paperclipColor)")
