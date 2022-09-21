import UIKit
import Darwin
//: 1. Creating and Initializing an Array
//:1.1 Creating an Array
let oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]
print(oddNumbers)

let streets = ["Albemarle", "Brandywine", "Chesapeake"]
print(streets)

//:1.2 init(repeating:count:)
/* Creates a new array containing the specified number of a single, repeated value.*/
let fiveZs = Array(repeating: "Z", count: 5)
print(fiveZs)
//:1.3 init(_:)
/* Creates an array containing the elements of a sequence.*/
let numbers = Array(1...7)
print(numbers)

//:1.4 init()
/* Creates a new, empty array. */
var emptyArray = Array<Int>()
print(emptyArray.isEmpty)

emptyArray = []
print(emptyArray.isEmpty)
//:2. Inspecting an Array
//:2.1 isEmpty
/* A Boolean value indicating whether the collection is empty.*/
let horseName = "Silver"
if horseName.isEmpty {
    print("I've been through the desert on a horse with no name.")
} else {
    print("Hi ho, \(horseName)")
}
//:2.2 count
/* The number of elements in the array.*/
let numbers2 = Array(1...7)
print("Count of number array is \(numbers2.count)")
//:2.3 capacity
/* The total number of elements that the array can contain without allocating new storage.*/
let numbers3 = Array(1...7)
print("Capacity of number array is \(numbers3.capacity)")
//:3. Accessing Elements
//: 3.1 subscript(_:)
/* Accesses the element at the specified position.*/
var streetsArray = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
streetsArray[1] = "Butler"
print("Subscript 1 is \(streetsArray[1])")
//:3.2 first
/* The first element of the collection. */
let numbersArray3 = [10, 20, 30, 40, 50]
if let firstNumber = numbersArray3.first {
    print("FirstNumber is \(firstNumber)")
}
//:3.3 last
/* The last element of the collection. */
if let lastNumber = numbersArray3.last {
    print("Last number in array is \(lastNumber)")
}
//:3.4 subscript(_:)
/* Accesses a contiguous subrange of the array’s elements. */
let streetArr =  ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
let streetsSlice = streetArr[2..<streetArr.endIndex]
print(streetsSlice)

let i = streetsSlice.index(of: "Evarts")
print(streetArr[i!])
//:4. Adding Elements
//:4.1 append(_:)
/* Adds a new element at the end of the array. */
var numbersArray1 = [1, 2, 3, 4, 5]
numbersArray1.append(100)
print(numbersArray1)
//:4.2 append(contentsOf:)
/* Adds the elements of a sequence or collection to the end of this collection.*/
var numbers5 = [1, 2, 3, 4, 5]
numbers5.append(contentsOf: 10...15)
print(numbers5)
//:4.3 insert(_:at:)
/* Inserts a new element at the specified position.*/
numbersArray1.insert(100, at: 3)
numbersArray1.insert(200, at: numbersArray1.endIndex)
print(numbersArray1)

//:4.4 insert(contentsOf:at:)
/* Inserts the elements of a sequence into the collection at the specified position.*/
numbersArray1.insert(contentsOf: 100...103, at: 3)
print(numbersArray1)
//:4.5 replaceSubrange(_:with:)
/* Replaces a range of elements with the elements in the specified collection.*/
var nums = [10, 20, 30, 40, 50]
nums.replaceSubrange(1...3, with: repeatElement(1, count: 5))
//:4.6 reserveCapacity(_:)
/*Reserves enough space to store the specified number of elements.*/
var values: [Int] = [0, 1, 2, 3]

func addTenQuadratic() {
    let newCount = values.count + 10
    values.reserveCapacity(newCount)
    for n in values.count..<newCount {
        values.append(n)
    }
}

addTenQuadratic()
print(values)

//:5. Removing Elements
//:5.1 remove(at:)
/* Removes and returns the element at the specified position.*/
var measurements: [Double] = [1.1, 1.5, 2.9, 1.2, 1.5, 1.3, 1.2]
var removed = measurements.remove(at: 2)
print(measurements)
//:5.2 removeFirst(_:)
/* Removes the specified number of elements from the beginning of the collection.*/
var bugs = ["Aphid", "Bumblebee", "Cicada", "Damselfly", "Earwig"]
bugs.removeFirst(3)
print(bugs)
//:5.3 removeLast(_:)
/*Removes the specified number of elements from the end of the collection.*/
bugs.removeLast(1)
print(bugs)
//:5.4 removeSubrange(_:)
/* Removes the elements in the specified subrange from the collection.*/
var measurements1 = [1.2, 1.5, 2.9, 1.2, 1.5]
measurements1.removeSubrange(1..<4)
print(measurements1)
//:5.5 removeAll())
/* Removes all elements from the collection.*/
measurements1.removeAll()
print(measurements1)
//:6. Finding Elements
//:6.1 contains(where:)
/*Returns a Boolean value indicating whether the sequence contains an element that satisfies the given predicate.*/
enum HTTPResponse {
    case ok
    case error(Int)
}

let lastThreeResponses: [HTTPResponse] = [.ok, .ok, .error(404)]
let hadError = lastThreeResponses.contains { element in
    if case .error = element {
        return true
    } else {
        return false
    }
}

print(hadError)
//:6.2 first(where:)
/* Returns the first element of the sequence that satisfies the given predicate. */
let number4 = [3, 7, 4, -2, 9, -6, 10, 1]
if let firstNegative = number4.first(where: { $0 < 0 }) {
    print("The first negative number is \(firstNegative)")
}
//:6.3 index(of:)
/*Returns the first index where the specified value appears in the collection.*/
var students = ["Ben", "Ivy", "Jordell", "Maxime"]
if let i = students.index(of: "Maxime") {
    print(i)
    students[i] = "Max"
}
                          
print(students)

//:6.4 min()
/* Returns the minimum element in the sequence.*/
let heights = [67.5, 65.7, 64.3, 61.1, 58.5, 60.3, 64.9]
let lowestHeight = heights.min()
print(lowestHeight ?? "none")
//:6.5 min(by:)
/*Returns the minimum element in the sequence, using the given predicate as the comparison between elements.*/
let hues =  ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
let leastHue = hues.min { a, b in a.value < b.value}
print(leastHue!)

//:6.6 max()
/* Returns the maximum element in the sequence.*/
let gratesHeight = heights.max()
print(gratesHeight!)
//:6.7 max(by:)
/* Returns the maximum element in the sequence, using the given predicate as the comparison between elements.*/
let greatesHue1 = hues.max { a, b in a.value < b.value}
print(greatesHue1!)
//:7. Selecting Elements
//:7.1 prefix(_:)
/* Returns a subsequence, up to the specified maximum length, containing the initial elements of the collection.*/
let numbersA = [1, 2, 3, 4, 5]
print(numbersA.prefix(2))
print(numbersA.prefix(4))
//:7.2 prefix(through:)
/* Returns a subsequence from the start of the collection through the specified position.*/
let numberAr = [10, 20, 30, 40, 50, 60]
if let i = numberAr.index(of: 40){
    print(i)
    print(numberAr.prefix(through:  i))
    print(numberAr.prefix(through: 2))
}
//:7.3 suffix(_:)
/* Returns a subsequence, up to the given maximum length, containing the final elements of the collection.*/
let numbersA2 = [1, 2, 3, 4, 5]
print(numbersA2.suffix(2))
//:7.4 suffix(from:)
/* Returns a subsequence from the specified position to the end of the collection.*/
let numbersS = [10, 20, 30, 40, 50, 60]
if let i = numbersS.index(of: 40) {
    print(numbersS.suffix(from: i))
}
//:8. Iterating Over an Array's Elements
//:8.1 forEach(_:)
/* Calls the given closure on each element in the sequence in the same order as a for-in loop.*/
let numberWords = ["one", "two", "three"]
for word in numberWords {
    print(word)
}
//:8.2 enumerated()
/* Returns a sequence of pairs (n, x), where n represents a consecutive integer starting at zero, and x represents an element of the sequence.*/
for (n, c) in "Swift".enumerated() {
    print("\(n): '\(c)'")
}
//:9. Sorting an Array
//:9.1 sort()
/* Sorts the collection in place. */
var students1 = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
students1.sorted()
print(students1)
//:9.2 sort(by:)
/*Sorts the collection in place, using the given predicate as the comparison between elements.*/
enum HTTPResponse1 {
    case ok
    case error(Int)
}

var responses: [HTTPResponse1] = [.error(500), .ok, .ok, .error(404), .error(403)]
responses.sorted() {
    switch ($0, $1){
    // order errors by code
    case let (.error(aCode), .error(bCode)):
        return aCode < bCode
        
    // All successes are equivalent, so none is before any other
    case (.ok, .ok): return false
        
    // Order errors before successes
    case (.error, .ok): return true
    case (.ok, .error): return false
    }
}
print(responses)
//:9.3 sorted()
/*Returns the elements of the collection, sorted.*/
let studentsT: Set = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
let sortedStudents = studentsT.sorted()
print(sortedStudents)
//:9.4 reversed()
/*Returns a view presenting the elements of the collection in reverse order.*/
let numberC = [3, 5, 7]
for number in numberC.reversed(){
    print(number)
}
//:10. Excluding Elements
//:10.1 dropFirst()
/*Returns a subsequence containing all but the first element of the sequence.*/
let numbersW = [1, 2, 3, 4, 5]
print(numbersW.dropFirst())
//:10.2 dropLast()
/* Returns a subsequence containing all but the last element of the sequence.*/
let numbersW2 = [1, 2, 3, 4, 5]
print(numbersW2.dropLast())
//:11. Manipulating Indices
//:11.1 startIndex
/* The position of the first element in a nonempty array.*/
print(numbersW.startIndex)
//:11.2 endIndex
/*The array’s “past the end” position—that is, the position one greater than the last valid subscript argument.*/
print(numbersW.endIndex)
//:12. Splitting and Joining Elements
//:12.1 split(separator:maxSplits:omittingEmptySubsequences:)
/*Returns the longest possible subsequences of the sequence, in order, around elements equal to the given element.*/
let line = "BLANCHE I don't want realism. I want magic!"
print(line.split(separator: " ").map(String.init))
//:12.2 split(maxSplits:omittingEmptySubsequences:whereSeparator:)
/*Returns the longest possible subsequences of the collection, in order, that don’t contain elements satisfying the given predicate.*/
print(line.split(whereSeparator: {$0 == "a"}))
//:12.3 joined(separator:)
/*Returns a new string by concatenating the elements of the sequence, adding the given separator between each element.*/
let cast = ["Vivien", "Marlon", "Kim", "Karl"]
let list = cast.joined(separator: ",")
print(list)
//:12.4 joined()
/*Returns the elements of this collection of collections, concatenated.*/
let ranges = [0..<3, 8..<10, 15..<17]
for range in ranges {
    print(range)
}

for index in ranges.joined(){
    print(index, terminator: " ")
}
//:13. Comparing Arrays
//:13.1 ==(_: _:)
/*Returns true if these arrays contain the same elements.*/
let arr1 = [1, 2, 2, 3, 4, 5]
let arr2 = [1, 3, 6, 7, 9 ,10]
if (arr1 == arr2) {
    print("EQUAL ARRAY \(arr1)")
} else {
    print("NOT EQUAL")
}
//:13.2 !=(::)
/*Returns true if the arrays do not contain the same elements.*/
let arr11 = [1, 2, 2, 3, 4, 5]
let arr22 = [1, 3, 6, 7, 9 ,10]
if (arr11 != arr2) {
    print("Not EQUAL")
} else {
    print("EQUAL")
}
//:13.3 elementsEqual(_:)
/*Returns a Boolean value indicating whether this sequence and another sequence contain the same elements in the same order.*/
if (arr1.elementsEqual(arr2)) {
    print("Equal elements")
} else {
    print("not equal")
}
//:13.4 starts(with:)
/*Returns a Boolean value indicating whether the initial elements of the sequence are the same as the elements in another sequence.*/
let a = 1...3
let b = 1...10
print(b.starts(with: a))
//:13.5 lexicographicallyPrecedes(_:)
/*Returns a Boolean value indicating whether the sequence precedes another sequence in a lexicographical (dictionary) ordering, using the less-than operator (<) to compare elements.*/
let a8 = [1, 2, 2, 2]
let b8 = [1, 2, 3, 4]
print(a8.lexicographicallyPrecedes(b8))
print(b8.lexicographicallyPrecedes(b8))
//:14. Describing an Array
//:14.1 description
/* A textual representation of the array and its elements.*/
let ax = [1, 2, 2, 2]
print(ax.description)
//:14.2 debugDescription
/*A textual representation of the array and its elements, suitable for debugging.*/
let ax2 = [1, 2, 2, 2]
print(ax2.debugDescription)
//:14.3 customMirror
/* A mirror that reflects the array.*/
let ax3 = [1, 2, 2, 2]
print(ax3.customMirror)
//:15. Bridging Between Array and NSArray
/* When you need to access APIs that require data in an NSArray instance instead of Array, use the type-cast operator (as) to bridge your instance.
 
 For bridging to be possible, the Element type of your array must be a class, an @objc protocol (a protocol imported from Objective-C or marked with the @objc attribute), or a type that bridges to a Foundation type.
 */
import Foundation
var arr6: NSMutableArray = ["Pencil", "Eraser", "Notebook"]

func bar (a: NSMutableArray)
{
    a[2] = "Pen"
}

bar(a: arr6)
print(Array(arr6))
