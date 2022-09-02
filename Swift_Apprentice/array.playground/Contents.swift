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

