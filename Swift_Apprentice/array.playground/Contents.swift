import UIKit

//: Creating arrays
let array = [1, 2, 3, 4, 5]

let arrayOdd: [Int] = [1, 3, 5, 7]

let arrayString = ["Ali", "Abdullah"]

let arrayStringTA: [String] = ["pen", "book"]

let arrayRepeat = Array(repeating: 3, count: 10)
print(arrayRepeat)

let vowels = ["a", "e", "i", "o", "u"]

var songs = ["Hello", "Hello", "Ocean in the deep"]

type(of: songs) // print out the data type of "songs"

var emptyArray: [Int] = []
emptyArray = [1]
//emptyArray = ["ali"]

var emptyDouble: [Double] = []
var emptyFloat: Array<Float> = []
var value = [Int]()

// var mix = ["Abdullah", 34] // Heterogeneous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional
var mix: [Any] = ["Abdullah", 34]

var songs1: [String]
songs[0] = "Shake it Off"

var songs2: [String] = []

var score: Array<Int> = [20, 30, 59]

//: Accessing elements
var players = ["Alice", "Bob", "Cindy", "Dan"]

print(players.isEmpty) // isEmpty property to check if there’s at least one player

/*“Properties”. For now, just think of them as variables that are built into values.*/

if players.count < 2 {
    print("We need at least two players!")
} else {
    print("Let’s start!")
}

var currentPlayer = players.first // <- first property to fetch the first object of an array

//print(CurrentPlayer)
print(currentPlayer as Any) // <- to suppress the warning, simply add as Any to the type to be printed.

print(currentPlayer?.last as Any) // <- last property that returns the last value in an array

currentPlayer = players.min() // <- min(). This method returns the element with the lowest value in the array — not the lowest index!
print(currentPlayer as Any)

/*“Methods”. For now, just think of them as functions that are built into values. */
/*Like functions, don’t forget to include the parameter list, even if it’s empty, when calling a method.*/

print([2, 3, 1].first as Any)
print([2, 3, 1].min() as Any)

if let currentPlayer = currentPlayer {
    print("\(currentPlayer) will start")
}

/* You use if let to unwrap the optional you got back from min(); otherwise, the statement would print Optional("Alice") will start, which is not what you want. */

var names = [String]()
if names.isEmpty {
    print("Array is Empty")
} else {
    print("Elements:", names)
}
//:>
var GEmpSalary = [34, 122, 14, 678, 1, 90]
var result1 = GEmpSalary.isEmpty
print("Is the GEmpSalary is empty or not?,", result1)

var GEmployee = [Int]()
var result2 = GEmployee.isEmpty
print("Is the GEmployee is empty or not?", result2)
//:
var AuthorName = ["Tina", "Prita", "Mona", "Guri", "Om", "Rohit"]
if (AuthorName.isEmpty == true) {
    print("Yes! the given Array is empty")
} else {
    print("No! the given array is not empty")

}

var str = ""
var result = str.isEmpty
print("Is the string empty? \(result)")

var example = String()
if example.isEmpty {
    print("No characters in string")
}

example = "Frog"
if !example.isEmpty {
    print("No empty now")
}

var languages = ["Swift": 2014, "C": 1972, "Java": 1995]
var result3 = languages.isEmpty
print(result3)

var names8 = ["Alcaraz": 2003, "Sinner": 2000, "Nadal": 1985]
print(names.isEmpty)

var employees = [String: Int]()
print(employees.isEmpty)


var employees4 = ["Ranjy": 50000, "Sabby": 100000]
if (employees4.isEmpty) {
    print("Dictionary is empty")
} else {
    print("Elements:", employees4)
}

"Hello".isEmpty
"".isEmpty

var myString = "Abdullah"
myString.count == 0

" ".isEmpty
"\t\r\n".isEmpty
"\u{00a0}".isEmpty
"\u{2002}".isEmpty
"\u{2003}".isEmpty

func isBlank(_ string: String) -> Bool {
    for character in string {
        if !character.isWhitespace {
            return false
        }
    }
    return true
}

isBlank("a")

extension String {
    var isBlank: Bool {
        return allSatisfy({$0.isWhitespace})
    }
}

"Hello".isBlank        // false
"   Hello   ".isBlank  // false
"".isBlank             // true
" ".isBlank            // true
"\t\r\n".isBlank       // true
"\u{00a0}".isBlank     // true
"\u{2002}".isBlank     // true
"\u{2003}".isBlank     // true

extension Optional where Wrapped == String {
    var isBlank: Bool {
        return self?.isBlank ?? true
    }
}

var title: String? = nil
title.isBlank            // true
title = ""
title.isBlank            // true
title = "  \t  "
title.isBlank            // true
title = "Hello"
title.isBlank            // false

let name = ""

if name.count == 0 {
    print("You're anonymous")
}

if name.isEmpty {
    print("You're annonymous")
}

//:Using subscripting
var firsPlayer = players[0]
print("First player is \(firsPlayer)")

// var player = players[4]
// > fatal error: Index out of range

var array5 = [1, 2, 3, 5, 8, 13]
print(array5[0])

print(array5[1...4])
print(array5[1..<4])

var dictionary = ["male": "I am a male"]
print(dictionary["male"]!)

let fifthElement = array[4]
let accessToken = dictionary["male"]

//: Using countable ranges to make an ArraySlice
let upcomingPlayersSlice = players[1...2]
print(upcomingPlayersSlice[1], upcomingPlayersSlice[2])

let upcomingPlayersArray = Array(players[1...2])
print(upcomingPlayersArray[0], upcomingPlayersArray[1])

//:Checking for an element
func isEliminates(player: String) -> Bool {
    !players.contains(player)
}

print(isEliminates(player: "Bob"))

players[1...3].contains("Bob")

let cast = ["Vivien", "Marlon", "Kim", "Karl"]
print(cast.contains("Marlon"))
print(cast.contains("James"))

var elements = [1, 2, 3, 4, 5, 6]
if elements.contains(5) {
    print("Do something")
}

//:
var names5 = ["Gregory", "Perry", "Nadal"]
var result5 = names5.contains("Nadal")
result5 = names5.contains("Federe")
//:
var names6 = ["Gregory", "Perry", "Nadal"]
var name1 = "Gregory"
var name2 = "gregory"
if (names6.contains(name1)) {
    print("Array contains", name1)
} else {
    print("Array doesn't contain", name1)
}

// contains() is case-sensitive
if (names6.contains(name2)) {
    print("Array contains", name2)
} else {
    print("Array doesn't contains", name2)
}
//:
let array9 = ["Apples", "Peaches", "Plums"]
if array9.contains("Apples") {
    print("We've got apples")
} else {
    print("No Apples here - sorry!")
}
//:
var swiftArray: [String] = ["swift4", "Java", "MySQL", "Web", "Data"]
print("Actual Array - \(swiftArray)")
var swiftSet: Set = ["swift4","Java","MySQL","Web","Data"]
print("Actual Set - \(swiftSet)")
print("Does Web exist in swiftArray? - ", swiftArray.contains("Web"))
print("Does Web exist in swiftSet? - ", swiftSet.contains("Web"))

// ask userName and calculate

var userName = ["Abdullah", "Nurdan"]

func calculate(firstNumber: Int, secondNumber:Int, name9:String) -> Int {
    userName.contains(name9) ? firstNumber + secondNumber : 0
}
calculate(firstNumber: 5, secondNumber: 6, name9: "Abdullah")
//:
let birthdays: [String: String] = [
    "Emma": "12/12/1985",
    "James": "11/07/1980",
    "Cathy": "07/09/1990",
    "Mike": "05/01/2000",
    "Lucy": "11/03/1972"
]
birthdays.keys.contains("Emma")
//:
birthdays.keys.contains { key -> Bool in
    key == "Emma"
}
birthdays.keys.contains { $0 == "Emma" }
//:
enum Animal {
    case dog
    case cat
}

let animals: [Animal] = [.dog, .dog]
let hasCat = animals.contains(.cat)
//:
enum Animal1 {
    case dog(String)
    case cat(String)
}

let animals1: [Animal1] = [.dog("Growlithe"), .dog("Rockruff")]
// let hasCat1 = animals1.contains(.cat("Meowth"))

//instead
let hasCat1 = animals1.contains { animals1 in
    if case .cat = animals1 {
        return true
    }
    return false
}
//:
let array7 = [2, 5, 6, 7, 19, 40]
array7.contains { (elements) -> Bool in
    elements % 7 == 0
}

//: Modifying arrays
//:Appending elements
players.append("Eli")
players += ["Gina"]
print(players)
//:
var numbers = [1, 2, 3, 4, 5]
numbers.append(100)
//:
var city =  ["Boston", "Tokyo", "Kathmandu"]
city.append("London")
print(city)
//:
var languages7 = ["Swift", "C", "Java"]
languages7.append("C++")
print(languages7)

var priceList = [12, 21, 35]
priceList.append(44)
//:
var animals7 = ["cat", "dog"]
var wildAnimals = ["tiger", "fox"]
animals7.append(contentsOf: wildAnimals)
print(animals7)
//:
var myArray = ["Steve", "Bill", "Linus", "Bret"]
myArray.append("Abdullah")
myArray += ["Ahmet", "Orhan"]
var str1:String = "John"
var str2:String = "Bob"
myArray.append(str1)
myArray.append(str2)
//:
var first = ["Abdullah", "Bilgin"]
let second = ["Nurdan", "Orhan"]
first.append(contentsOf: second)

first += second
let third = first + second
//:
var nums = [1, 2, 3]
nums.append(4)
nums.append(contentsOf: 5...10)
//:Inserting elements
players.insert("Frank", at: 5)
//:
var str11 = "spresso"
var str22 = "Swif"
str11.insert("E", at: str11.startIndex)
str22.insert("t", at: str22.endIndex)
//:
var fruit = ["apple", "banana", "cherry", "mango"]
var anotherFruit = "guava"
var index = 2
fruit.insert(anotherFruit, at: index)
//:
var array33 = ["word"]
array33.insert("hello", at: 0)
//:
var vowel = ["a", "e", "i", "u"]
vowel.insert("o", at: 3)
//:
var prime = [2, 3, 5, 7]
prime.insert(11, at: 4)
//:
var even = [4, 6, 8]
even.insert(2, at: even.startIndex)
even.insert(10, at: even.endIndex)
//:Removing elements
var removedPlayer = players.removeLast()
removedPlayer = players.remove(at: 2)
print("\(removedPlayer) was removed")
//:
var ingredients: Set = ["cocoa beans", "sugar", "cocoa butter", "salt"]
let toRemove = "sugar"
if let removed = ingredients.remove(toRemove) {
    print("The recipe is now \(removed) - free")
}
//:
var nonempty = "non-empty"
if let i = nonempty.firstIndex(of: "-") {
    nonempty.remove(at: i)
}
print(nonempty)
//:
var animals88 = ["cats", "dogs", "chimps", "moose"]
animals88.remove(at: 2)
animals88.removeFirst()
animals88.removeLast()
//:
//Remove element of unknown index
if let index = animals88.firstIndex(of: "dogs") {
    animals88.remove(at: index)
}

var animals99 = ["cats", "dogs", "chimps", "moose", "chimps"]
animals99 = animals99.filter(){$0 != "chimps"}
print(animals99)
//:
var prime77 = [2, 3, 5, 7, 9, 11]
prime77.remove(at: 4)
//:
var languages88 = ["Swift", "C", "Objective-C"]
var removed = languages88.remove(at: 2)
//:
// string remove()
var greeting88 = "Good-Morning"
var i = greeting88.index(greeting88.startIndex, offsetBy: 4)
greeting88.remove(at: i)
//:
var message = "Hello, World!"
var i1 = message.index(message.startIndex, offsetBy: 12)
var removed1 = message.remove(at: i1)
//:
var numbers66:[Int] = [2, 3, 5, 7, 11, 13, 17]
numbers66.remove(at: 3)
numbers66.forEach { number in
    print("\(numbers66)")
}

// dropLast
let fruits66 = ["Apple","Orange","Banana"]
let nonRoundFruits = fruits66.dropLast()
print(fruits66)

// removeLast()
var fruits77 = ["Apple","Orange","Banana"]
let removedFruit = fruits77.removeLast()
print(fruits77)
/*The fruits array is mutable and hence it is declared as a ‘var’ If there are no elements in the array and if removeLast() method is invoked, the app will crash.*/

// popLAst()
var fruits88 = ["Apple","Orange","Banana"]
let removedFruits88 = fruits88.popLast()
print(fruits88)
/* there are no elements in an array, and if the popLast() method is invoked, the app will not crash. Instead, it will return a nil value.*/
//:
var arrayOfString = ["a","b","c","f"]
let modifiedArray = arrayOfString.filter { $0 != "f"}
print(modifiedArray)
//:
if arrayOfString.contains("c") {
    let index = arrayOfString.firstIndex(of: "c")
    arrayOfString.remove(at: index!)
    print(arrayOfString)
}
//:
var arry44 = [1,2,6,44]
let modifiedArray44 = arry44.filter { $0 != 6 }
print(modifiedArray44)
if arry44.contains(1) {
    let index = arry44.firstIndex(of: 1)
    arry44.remove(at: index!)
    print(arry44)
}
//:
print(players)
let indexOfDan = players.firstIndex(of: "Dan")
