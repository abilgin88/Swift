import UIKit
import Foundation
//:1. Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum.
func sumOfTwo(number1: Int, number2: Int) -> Int {
    var sum:Int
    if number1 == number2 {
        sum = 3 * (number1 + number2)
    } else {
        sum = number1 + number2
    }
    return sum
}
sumOfTwo(number1: 2, number2: 4)
sumOfTwo(number1: 4, number2: 4)
//:
func triple_sum(a: Int, b: Int) -> Int {
    if a == b {
        return (a + b) * 3
    } else {
        return a + b
    }
}
print(triple_sum(a: 1, b: 2))
print(triple_sum(a: 3, b: 2))
print(triple_sum(a: 2, b: 2))
//:2. Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference
func absoluteDiff(n number1: Int) -> Int {
    if number1 > 51 {
        return (number1 - 51) * 2
    } else {
        return abs(number1 - 51)
    }
}
absoluteDiff(n: 45)
absoluteDiff(n: 61)
absoluteDiff(n: 21)
//:
func diff_51(x: Int) -> Int {
    if x > 51 {
        return (x - 51) * 2
    } else {
        return 51 - x
    }
}
print(diff_51(x: 45))
print(diff_51(x: 61))
print(diff_51(x: 21))
//:3. Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20
func twenty(number1: Int, number2: Int) -> Bool {
    if number1 == 20 || number2 == 20 || (number1 + number2) == 20 {
        return true
    } else {
        return false
    }
}
twenty(number1: 29, number2: 10)
twenty(number1: 20, number2: 17)
twenty(number1: 11, number2: 9)
//:4. Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative
func isNagPos(num1: Int, num2: Int) -> Bool {
    if num1 < 0 && num2 < 0 {
        return true
    } else if num1 < 0 && num2 > 0 || num1 > 0 && num2 < 0 {
        return true
    } else {
        return false
    }
}
isNagPos(num1: 12, num2: -5)
isNagPos(num1: -12, num2: 5)
isNagPos(num1: -12, num2: -5)
isNagPos(num1: 12, num2: 5)
//:5. Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string
func addIs(string: String) -> String {
    if string.starts(with: "Is") {
        return string
    } else {
        return "Is " + string
    }
}
addIs(string: "Is Swift")
addIs(string: "Swift")
//:
func isString(word: String) -> String {
    if word.hasPrefix("Is") == true {
        return word
    } else {
        return "Is \(word)"
    }
}
addIs(string: "Is Swift")
addIs(string: "Swift")
//:6. Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive
func removeCha(word: String, index:Character) {
    var newWord = ""
    if !word.isEmpty {
        for i in word {
            if i != index {
                newWord += String(i)
            }
        }
    }
    print(newWord)
}
removeCha(word: "w3resource", index: "o")
//:
func removeChar(word: String, index: Int) {
    var newword = word
    var i = newword.index(newword.startIndex, offsetBy: index)
    var removed = newword.remove(at: i)
    print(removed)
    print(newword)
}
removeChar(word: "w3resource", index: 5)
//:
func remove_char(str1: String, n: Int) -> String{
    let count = str1.count
    var newWord = str1
    let index = str1.index(str1.startIndex, offsetBy: n)
    if count > 0 {
        newWord.remove(at: index)
    }
    return newWord
}

print(remove_char(str1: "Python", n: 1))
print(remove_char(str1: "Python", n: 0))
print(remove_char(str1: "Python", n: 4))
//:7. Write a Swift program to change the first and last character of a given string
func changeFirsLast(givenString: String) -> String {
    var newString = ""
    var array: [String] = []
    for i in givenString {
        var k = String(i)
        array.append(k)
    }
    var f = array.first!
    var l = array.last!
    var lastIndex = array.count - 1
    array[lastIndex] = f
    array[0] = l
    newString = array.joined()
    return newString
}

changeFirsLast(givenString: "Swift")
changeFirsLast(givenString: "Apple")
changeFirsLast(givenString: "aaaa")
//:
func first_last(str1: String) -> String {
    let count = str1.count
    if count <= 1 {
        return str1
    }
    var result = str1
    let first_char = result.remove(at: result.startIndex)
    let findLast = result.index(before: result.endIndex)
    let last_char = result.remove(at: findLast)
    result.append(first_char)
    result.insert(last_char, at: (result.startIndex))
    return result
}
first_last(str1: "Swift")
first_last(str1: "Apple")
first_last(str1: "aaaa")
//:8. Write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more
func addFrontBack(string: String) -> String {
    if string.count < 1 {
        return string
    }
    var newString = string
    let lastChar = newString.last!
    newString.append(lastChar)
    newString.insert(lastChar, at: newString.startIndex)
    return newString
}
addFrontBack(string: "swift")
addFrontBack(string: "html")
addFrontBack(string: "h")
//:

func front_back(str1: String) -> String {
    var result_word = str1
    let last_char = result_word.removeLast()
    let last_str = String(last_char)
    return last_str + str1 + last_str
}
front_back(str1: "swift")
front_back(str1: "html")
front_back(str1: "h")
//:10. Write a Swift program to take the first two characters from a given string and create a new string with the two characters added at both the front and back
func firstTwoFrontBack(string: String) -> String {
    if string.count < 2 {
        return string
    }
    var newString = ""
    var tempString = string
    let firstChar = tempString.first!
    let secondIndex = tempString.index(tempString.startIndex, offsetBy: 1)
    let secondChar = tempString[secondIndex]
    newString = String(firstChar) + String(secondChar) + string + String(firstChar) + String(secondChar)
    return newString
}
firstTwoFrontBack(string: "swift")
firstTwoFrontBack(string: "abc")
firstTwoFrontBack(string: "ab")
firstTwoFrontBack(string: "a")
//:
func front_back_add2(str1: String) -> String {
    let newInput = str1
    let first_2Values = newInput.prefix(2)
    let first_two = String(first_2Values)
    return first_two + str1 + first_two
}
front_back_add2(str1: "swift")
front_back_add2(str1: "abc")
front_back_add2(str1: "ab")
front_back_add2(str1: "a")
//:11. Write a Swift program to test a given string whether it starts with "Is". Return true or false
func startsWithIs(string: String) -> Bool {
    if string.hasPrefix("Is") {
        return true
    } else {
        return false
    }
}
startsWithIs(string: "Is Swift")
startsWithIs(string: "is python")
startsWithIs(string: "java is")
//:
func start_is(str1: String) -> Bool {
    let str2 = str1
    let hello = "Is"
    let first2Values = str2.prefix(2)
    let first_two = String(first2Values)
    if hello == first_two {
        return true
    } else {
        return false
    }
    
}
start_is(str1: "Is Swift")
start_is(str1: "is python")
start_is(str1: "java is")
//:12. Write a Swift program that return true if either of two given integers is in the range 10..30 inclusive.
func range10_30(num1: Int, num2:Int) -> Bool {
    if num1 <= 30 && num1 >= 0 && num2 <= 30 && num2 >= 0 {
        return true
    } else {
        return false
    }
}
range10_30(num1: 15, num2: 40)
range10_30(num1: 55, num2: 9)
range10_30(num1: 11, num2: 25)
//:
func in1030(a: Int, b: Int) -> Bool {
    if a >= 10 && a <= 30 {
        return true
    } else if b >= 10 && b <= 30 {
        return true
    } else {
        return false
    }
}

in1030(a: 15, b: 40)
in1030(a: 55, b: 9)
in1030(a: 11, b: 25)
//:13. Write a Swift program to check if a given string begins with "fix", except the 'f' can be any character or number
func checkFix(string: String) -> Bool {
    let newString = string
    let indexChar2 = newString.index(newString.startIndex, offsetBy: 1)
    let char2 = newString[indexChar2]
    let indexChar3 = newString.index(newString.startIndex, offsetBy: 2)
    let char3 = newString[indexChar3]
    let char23 = String(char2) + String(char3)
    if char23 == "ix" {
        return true
    }
    return false
}
checkFix(string: "fix gold")
checkFix(string: "six gold")
checkFix(string: "1ix gold")
checkFix(string: "gold")
checkFix(string: "fax gold")
//:
func fix_Start(_ input: String) -> Bool {
    var newInput = input
    let startIndex = newInput.startIndex
    let first_char = newInput.remove(at: startIndex)
    
    if newInput.hasPrefix("ix") == true {
        newInput.removeFirst(3)
        newInput.insert(first_char, at: startIndex)
        return true
    } else {
        return false
    }
}

fix_Start("fix gold")
fix_Start("six gold")
fix_Start("1ix gold")
fix_Start("gold")
fix_Start("fax gold")
//:14. Write a Swift program to find the largest number among three given integers
func largestNumber(num1: Int, num2: Int, num3: Int) -> Int {
    if num1 > num2 && num1 > num3 {
        return num1
    } else if num2 > num1 && num2 > num3 {
        return num2
    } else if num1 == num2 && num2 > num3 {
        return num1
    } else if num2 == num3 && num3 > num2 {
        return num2
    } else {
        return num3
    }
    
}
largestNumber(num1: 1, num2: 2, num3: 3)
largestNumber(num1: 1, num2: 1, num3: 3)
largestNumber(num1: 1, num2: 3, num3: 3)
largestNumber(num1: 3, num2: 2, num3: 1)
largestNumber(num1: -3, num2: -2, num3: 0)
//:
func max_three(_ x: Int, _ y: Int, _ z: Int) -> Int {
    if x > y, x > z {
        return x
    } else if y > z, y > x {
        return y
    } else if z > y, z > x {
        return z
    } else if x == y, y > z {
        return x
    } else if y == z, z > x {
        return y
    } else {
        return x
    }
}
max_three(1, 2, 3)
max_three(3, 2, 1)
max_three(-3, -2, 0)
//:
//:15. Write a Swift program that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.
func nearest10(_ number1: Int, _ number2: Int) -> Int {
    if abs(10 - number1) > abs(10 - number2) {
        return number2
    } else if abs(10 - number1) < abs(10 - number2) {
        return number1
    } else {
        return 0
    }
}
nearest10(4, 17)
nearest10(6, 14)
nearest10(8, 16)
//:16. Write a Swift program that accept two integer values and test if they are both in the range 20..30 inclusive, or they are both in the range 30..40 inclusive.
func inclusive(_ number1: Int, _ number2: Int) -> String {
    if (number1 >= 20 && number1 <= 30) && (number2 >= 20 && number2 <= 30) {
        return "Both in the range 20..30"
    } else if (number1 >= 30 && number1 <= 40) && (number2 >= 30 && number2 <= 40) {
        return "Both in the range 30..40"
    } else {
        return "Both does not in the range"
    }
   
}

inclusive(23, 27)
inclusive(35, 32)
inclusive(12, 35)
inclusive(24, 35)
//:17. Write a Swift program that accept two positive integer values and test whether the larger value is in the range 20..30 inclusive, or return 0 if neither is in that range
func largeIn20_30(num1: Int, num2: Int) -> Int {
    if num1 >= 20 && num1 <= 30 && num1 > num2 {
        return num1
    } else if num2 >= 20 && num2 <= 30 {
        return num2
    } else {
        return 0
    }
}
largeIn20_30(num1: 22, num2: 29)
largeIn20_30(num1: 28, num2: 17)
largeIn20_30(num1: 8, num2: 47)
largeIn20_30(num1: 22, num2: 22)
//:18. Write a Swift program to test whether the last digit of the two given non-negative integer values are same or not.
func testLastDigit(_ num1: Int, _ num2: Int) -> Bool {
    if (num1 % 10 == num2 % 10){
        return true
    }
    return false
}
testLastDigit(3, 13)
testLastDigit(24, 4)
testLastDigit(12, 24)
//:
func same_last_Digit(_ a: Int, _ b: Int) -> Bool {
    guard a < 0, b < 0 else {
        if a % 10 == b % 10 {
            return true
        } else{
            return false
        }
    }
    return false
}

same_last_Digit(3, 13)
same_last_Digit(24, 4)
same_last_Digit(12, 24)
//:19. Write a Swift program to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there
func conversLast3Char(_ word: String) -> String {
    if word.count > 3 {
        //var upper = word.suffix(3).uppercased()
        var array: [String] = []
        for i in word {
            var a = String(i).lowercased()
            array.append(a)
        }
        array[array.count - 1] = array[array.count - 1].uppercased()
        array[array.count - 2] = array[array.count - 2].uppercased()
        array[array.count - 3] = array[array.count - 3].uppercased()
        var newWord = array.joined()
        return newWord
    } else {
        return word.lowercased()
    }
}
conversLast3Char("Hi")
conversLast3Char("Hello there")
conversLast3Char("Is")
conversLast3Char("Python")
//:
func case_str(_ input: String) -> String {
    if input.count < 3 {
        return input.lowercased()
    } else {
        var newInput = input
        var str1: String = ""
        let lastThree = newInput.suffix(3)
        newInput.removeLast(3)
        let lastThreeUpper = String(lastThree).uppercased()
        str1.append(contentsOf: newInput)
        str1.append(String(lastThree).uppercased())
        return str1
    }
}
case_str("Hi")
case_str("Hello there")
case_str("Is")
case_str("Python")
//: 20. Write a Swift program to check if the first instance of "a" in a given string is immediately followed by another "a".
func followedChar(_ str: String) -> Bool {
    for i in str {
        if i == "a" {
            print(i)
            return true
            
        }
    }
    return true
}
followedChar("abbcaad")
//followedChar("ababab")
//followedChar("aaaaa")
