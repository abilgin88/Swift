import UIKit

// String Literals


let someString = "Some string literal value"

// Multiline String Literals


let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""


let singleLineString = "These are the same"
let multiLineString = """
These are the same
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."

"""


let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

print(lineBreaks)

// Special Characters in String Literals

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"

let dollarSing = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

//let threeDoubleQuotationMarks = """
//Escaping the first quotation mark \"""
//Escaping all three quotation marks \"\"\"
//"""
//
//

// Extended String Delimiters


