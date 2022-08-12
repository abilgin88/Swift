import UIKit

let http404Error = (404, "Not found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("the status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

var person = ("Abdullah", "Bilgin")
var name = person.0
var surname = person.1

var coordinate = (x:10, y:20)

var x = coordinate.x
var y = coordinate.y

person.0 = "Abdullah+"
person.1 = "Bilgin+"
print(person)

coordinate.x = 100
coordinate.y = 200

var errorMessage = (404, "Not Found")
var (code, message) = errorMessage
print(code)
print(message)

// nasted

var student : (Int, (Bool, String)) = (1256, (true, "Ahmet"))

var schoolID = student.0
var isEnrolled = student.1.0
var firstName = student.1.1
print(schoolID)

// Create A Tuple

var product = ("Macbook", 1099.99)

// Access Tuple Elements

// access the first element
product.0

// access second element
product.1

// Example: Swift Tuple

// create tuple with two elements
var productNew = ("MacBook Air", 1200)

//access tuple elements
print("Name:", product.0)
print("Price:", product.1)

//Modify Tuple Element
print("\nOriginal Tuple:")
print("Name:", product.0)
print("Price:", product.1)


//modify second value
product.1 = 1800
print("\nTuple after modification:")
print("Name:", product.0)
print("Price:", product.1)

// Named Tuples
//create named tuple
var company = (product: "MyApp", version: 3.3)

// access "MyApp
print("Product:", company.product)
print("version:", company.version)

//Nested Tuple

var alphabet = ("A", "B", "C", ("a", "b", "c"))

// access first element
print(alphabet.0)

// access the third element
print(alphabet.3)

// access nested tuple
print(alphabet.3.2)

// Add/Remove Element From Tuple

var companyNew = ("My New App", "Apple")
// companyNew.2 = "Google" // error (string,string)

// Dictionary inside a tuple
var laptopLunch = ("MacBook", 1299, ["Ankara": "11 PM", "England": "10 AM"])
print(laptopLunch.2)

laptopLunch.2["USA"] = "11 AM"
print(laptopLunch.2)


let person2 = (name: "Abdullah", age: 35)

func split(name: String) -> (firstName: String, lastName: String, City: String) {
    let split = name.components(separatedBy: " ")
    return (split[0], split[1], split[2])
}

let parts = split(name: "Abdullah Bilgin adiyaman")

parts.0
parts.1
parts.firstName
parts.lastName
print(parts)


// Advanced Tuples

let dataProviders = (["name": "Abdullah"], ["Ahmet", "Nurdan"], "Ceylan", 2022, false)

dataProviders.0
dataProviders.1
dataProviders.2
dataProviders.3
dataProviders.4

let dataProvider2 = (dic: ["name": "Abdullah"], array: ["Ahmet", "Nurdan"], name: "Ceylan", year: 2022, status: true)

dataProvider2.dic
dataProvider2.array
dataProvider2.name
dataProvider2.year
dataProvider2.status
dataProvider2.self

// Tuples Define with Specific types -

var values: (dic:[String: Any], array: [String], name: String, number: Int) = (dic: ["name": "Abdullah"],
    array: ["Ahmet", "Nurdan"],
    name: "Ceylan",
    number: 10)

values.dic
values.array
values.name
values.number

// typealies

typealias Mountain = (dic:[String: Any], array: [String], name: String, number: Int)

var values2: Mountain =  (dic: ["name": "Abdullah"], array : ["Ahmet", "Nurdan"], name: "Ceylan", number: 2022)


// what is the typealias
typealias number = [Int]
var twoInt: number = [12,12]

// we can use this with func

func getPhoneInfo() -> (name: String, price: Float) {
    return (name: "Iphone 12", price: 1200)
}

getPhoneInfo()

// with typealias

func getPersonInfo2() -> Mountain {
    return (dic: ["name": "Abdullah"], array : ["Ahmet", "Nurdan"], name: "Ceylan", number: 2022)
}
getPersonInfo2()
