import UIKit

let evenNumbers = [2, 4, 6, 8]

var subscribers: [String] = []

let allZeros = Array(repeating: 0, count: 5)

let vowels = ["A", "E", "I", "O", "U"]

var players = ["Ahmet", "Orhan", "Nurdan", "Ceylan"]

print(players.isEmpty)

if players.count < 2 {
    print("We need at least two players!")
} else {
    print("Let's start")
}

var currentPlayer = players.first

print(currentPlayer as Any)

print(players.last as Any)

print(players.min())

currentPlayer = players.min()
print(currentPlayer as Any)

print([2, 3, 1].first as  Any)
print([2, 3, 1].min() as Any)

if let currentPlayer = currentPlayer {
    print("\(currentPlayer) will start")
}

var firstPlayer = players[0]
print("First player is \(firstPlayer)")

// var player = players[4]


let upcomingPlayersSlice = players[1...2]
print(upcomingPlayersSlice[1], upcomingPlayersSlice[2])

let upcomingPlayerArray = Array(players[1...2])
print(upcomingPlayerArray[0], upcomingPlayerArray[1])

func isEliminated(player: String) -> Bool {
    !players.contains(player)
}

print(isEliminated(player: "Ahmet"))

players[1...3]
players[1...3].contains("Orhan")

players
players.append("Abdullah")

players += ["Kenan"]

print(players)

players.insert("Frank", at: 5)

var removedPlayer = players.removeLast()
print("\(removedPlayer) was removed")

removedPlayer = players.remove(at: 2)
print("\(removedPlayer) was removed")

players.firstIndex(of: "Abdullah")

print(players)
players[4]
players[4] = "Franklin"
print(players)

players[0...1] = ["Donna", "Craig", "Brian", "Anna"]
print(players)

players = ["Donna", "Craig", "Brian", "Anna", "Dan", "Eli",
           "Franklin"]

print(players)

let playerAnna = players.remove(at: 3)
players.insert(playerAnna, at: 0)

players.swapAt(1, 3)

players.sort()

players.sorted()

let score = [2, 2, 8, 6, 1, 2, 1]

for player in players {
    print(player)
}

for(index, player) in players.enumerated() {
    print("\(index + 1). \(player)")
}

func sumOfElements(in array: [Int]) -> Int {
    var sum = 0
    for number in array {
        sum += number
    }
    return sum
}

sumOfElements(in: score)

for(index, player) in players.enumerated() {
    print("\(index + 1). \(player) = \(score[index])")
}

var namesAndScore = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]
namesAndScore = [:]
var pairs: [String:Int] = [:]

pairs.reserveCapacity(20)

namesAndScore = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]
print(namesAndScore["Anna"]!)

namesAndScore["Greg"]

namesAndScore.isEmpty
namesAndScore.count

var bobData = [
    "name": "Bob",
    "profession": "Card Player",
    "county": "USA"
]

bobData.updateValue("CA", forKey: "state")
bobData["city"] = "San Francisco"

print(bobData)

func printCityState(_ dicName: [String:String]) {
    print("\(dicName["name"]!)= state: \(dicName["city"]!) and city: \(dicName["city"]!)")
}

printCityState(bobData)

func printLocation(ofPlayer player: [String:String]) {
    if let state = player["state"], let city = player["city"] {
        print("Player lives in \(city), \(state)")
    }
}
printLocation(ofPlayer: bobData)

bobData.updateValue("Bobby", forKey: "name")
bobData["profession"] = "Mailman"

bobData.removeValue(forKey: "state")
bobData["city"] = nil

for (player, score) in namesAndScore {
    print("\(player) - \(score)")
}

for player in namesAndScore.keys {
    print("\(player), ", terminator: "")
}
print("")

let setOne: Set<Int> = [1]

let someArray = [1, 2, 3, 1]

var explicitSet: Set<Int> = [1, 2, 3, 1]

var someSet = Set([1, 2, 3, 1])
print(someSet)


print(someSet.contains(1))
print(someSet.contains(4))

someSet.insert(5)

someSet

let removedElement = someSet.remove(1)
print(removedElement!)


