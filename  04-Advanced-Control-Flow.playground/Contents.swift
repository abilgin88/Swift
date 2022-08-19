import UIKit

let closedRange = 0...5
let halfOpenRange = 0..<5

while Int.random(in: 1...6) != 6 {
    print("Not a six")
}

let count = 10
var sum = 0
for i in 1...count {
    sum += i
    print(sum)
}

sum = 1
var lastSum = 0

for _ in 0..<count {
    let temp = sum
    sum = sum + lastSum
    lastSum = temp
}

sum = 0
for i in 1...count where i % 2 == 1 {
    sum += i
}

sum = 0

for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    for column in 0..<8 {
        sum += row * column
    }
}
print(sum)

sum = 0

for row in 0..<8 {
    if row % 2 == 1 {
        continue
    }
    for column in 0..<8 {
        sum += row * column
    }
}
print(sum)

sum = 0

for row in 0..<8 {
    for column in 0..<8 {
        sum += row * column
    }
}
print("\(sum)\n")


for column in 0..<8 {
    print("\n\(column)")
    for row in 0..<column {
        print(" \(column) - \(row * column)")
    }
}

sum = 0

rowLoop: for row in 0..<8 {
columnLoop: for column in 0..<8 {
    if row == column {
        continue rowLoop
    }
    sum += row * column
}
}

// square of each number.
let range = 1...10
for i in range {
    print("Square of \(i) = \(i * i)")
}

// square root of each number.
for i in range {
    print("Square root of \(i) = \(sqrt(Double(i)))")
}

sum = 0
for row in 0..<8 where row % 2 != 0 {
    for column in 0..<8 {
        sum += row * column
        
    }
}
print(sum)

