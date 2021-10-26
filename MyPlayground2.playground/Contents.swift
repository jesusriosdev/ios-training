import UIKit

var greeting2 = "Hello, playground"

let (x,y) = (1,2)
print(x)
print(y)

if x == y {
    print("OK")
} else {
    print("NOT OK")
}

1+1
1-2
1*3
10.0/2.5

"Hello " + "World"


9/4.0 // c
9%4

9 == 4*2+1

let five = 5
let minusFive = -five
let plusFive = -minusFive

var number = 5
number += 3 // number = number + 3
number -= 2 // number = number - 2

(2, "AJesus") < (2, "Ivan")

//("dog", false) < ("dog", true) // CANT COMPARE BOOLEANS WITH < >
("dog", false) == ("dog", true)

let contentHeight = 40
var hasImage = false
var rowHeight = 0
//if hasImage == true {
//    rowHeight = contentHeight + 50
//} else {
//    rowHeight = contentHeight + 10
//}

rowHeight = contentHeight + (hasImage == true ? 50 : 10)

let defaultAge = 18
var userAge: Int?
var ageToBeUsed = userAge ?? defaultAge

for idx  in 1...5 {
    print(idx)
}

for idx in 1..<5 {
    print(idx)
}

let names = ["Jesus", "Ivan", "Jessica", "Ana"]

for i in 0..<names.count {
    print(names[i])
}

for name in names[1...] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

let range = ...5

range.contains(7)
range.contains(4)
range.contains(-575757)

let allowEntry = false
if !allowEntry {
    print("DENIED")
} else {
    
}

let enterDoorCode = true
let passRetinaScan = false

if(enterDoorCode && passRetinaScan) {
    print("YOU CAN ENTER")
} else {
    print("DENIED")
}

let hasMoney = true
let hasInvitation = true

if (hasMoney || hasInvitation) {
    print("YOU CAN ENTER")
} else {
    print("DENIED")
}


let multine = """
    Hola\
    Soy\
    Jesus
    """

print(multine)


var emptyString = String()

if emptyString.isEmpty {
    print("empty")
}

emptyString += "not empty anymore"

if emptyString.isEmpty == false {
    print("empty")
}

let name = "Jesus"
for ch in name {
    print(ch)
}

let exclamationMark: Character = "!"
let nameChars: [Character] = ["J","e","s","u","s"]
var nameString = String(nameChars)
print(nameString)

let compoundName = "Jesus " + "Rios"
nameString.append(exclamationMark)
print(nameString)

let greeting = "Hi there!"
greeting[greeting.startIndex]
//print(greeting.endIndex)
//greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]

for idx in greeting.indices {
    print ("\(greeting[idx]) - \(idx)")
}

for idx in greeting.indices {
    print ("\(greeting[idx]) ", terminator: "")
}

var welcome = "Hi"
welcome.insert("!", at: welcome.endIndex)
print(welcome)
welcome.insert(contentsOf: " Howare you?", at: welcome.index(before: welcome.endIndex))
print(welcome)
welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)

let range2 = welcome.index(welcome.endIndex, offsetBy: -8)..<welcome.endIndex

welcome.removeSubrange(range2)
print(welcome)


let index = welcome.firstIndex(of: "i") ?? greeting.endIndex
let firstPart = welcome[..<index]
let newString = String(firstPart)

welcome = "How"
welcome.hasPrefix("How")
welcome.hasSuffix("How")


let ghost = "Ghost! 👻"
for codeunit in ghost.utf8 {
    print(codeunit, terminator: " ")
}
print(" ")
for codeunit in ghost.utf16 {
    print(codeunit, terminator: " ")
}
print(" ")
for codeunit in ghost.unicodeScalars {
    print(codeunit, terminator: " ")
}
print(" ")

// ARRAYS
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []

var someDoubles = Array(repeating: 3.141592, count: 7)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)
var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList: [String] = ["Apples", "Bananas", "Limes", "Tortillas", "Cookies"]
shoppingList.count

shoppingList[1]
shoppingList.isEmpty

for item in shoppingList {
    print(item)
}

for (idx, item) in shoppingList.enumerated() {
    print("\(idx + 1). \(item)")
}

// SETS
var letters = Set<Character>() // SETS DONT HAVE ORDER
letters.count
letters.insert("A")
letters.insert("N")
letters.insert("H")
letters

var favoritegames: Set<String> = ["Gears","GoW","TLOU2","Apex"]
favoritegames.count
if favoritegames.isEmpty {
    print("No games")
}

favoritegames.insert("AC")
if let removedGame = favoritegames.remove("AC") {
    print("eLIMINATED: \(removedGame)")
}

if favoritegames.contains("GoW") {
    print("Great game")
}

for game in favoritegames.sorted() {
    print(game)
}

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
evenDigits.intersection(primeNumbers).sorted()
oddDigits.subtracting(primeNumbers).sorted()
oddDigits.symmetricDifference(primeNumbers).sorted()

// DICTIONARIES
var nameOfIntegers = [Int : String]()
nameOfIntegers[15] = "fifteen"
nameOfIntegers = [:]

var airports: [String : String] = ["YYZ" : "Toronto", "DUB" : "Dublin", "PMI" : "Palma de Mallorca"]
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print(oldValue)
}
airports

if let airportName = airports["DUB"] {
    airportName
}

//airports["PMI"] = nil
//airports
//
//if let removedAiport = airports.removeValue(forKey: "DUB") {
//    removedAiport
//}

for (key, value) in airports {
    print("\(key) \(value)")
}

let aiportNames = [String](airports.values.sorted())


// CONTROL FLOW

let names2 = ["Jesus R", "Ana M", "Jessica G"]
for name in names2 {
    print(name)
}

var base = 2
var pwoer = 10
var answer = 1
for _ in 0...10 {
    answer *= base
    print(answer)
}

var hour = 5
var minutes = 60
var interval = 5
for tick in stride(from: 0, to: minutes, by: interval) {
    print("\(hour):\(tick)")
}

var i = 0
while i <= 10  {
    i += 1
}
print(i)

repeat {
    i += 1
} while i <= 10
print(i)


let someCharacter: Character = "a"
switch someCharacter {
    case "A", "a":
        print("First letter")
    
    
    case "Z", "z":
        print("Last letter")
default:
    print("Some other letter")
}

let moons = 62
let phare = "Moons in Saturn"
let naturalCount: String
switch moons {
    case 0:
        naturalCount = "There's no"
    case 1..<5:
        naturalCount = "There's a few"
    default:
        naturalCount = "There is a lot of"
}

print("\(naturalCount) \(phare)")

let somePoint = (5, 5)
switch somePoint {
case (0,0):
    print("Origin point: \(somePoint)")
//case (_,0):
//    print("Point \(somePoint) is on X")
//case (0,_):
//    print("Point \(somePoint) is on Y")
case (-2...2, -2...2):
    print("Point \(somePoint) is on Q4")
    
case (let x, 0):
    print("X value is: \(x)")
    
case let (x,y) where x == y:
    print("Point (x = y)")
case let (x,y):
    print("Point (\(x), \(y))")
}

let someCharacter2: Character = "e"
switch someCharacter2 {
case "a", "e", "i", "o", "u":
    print("VOCAL")
    
case "q", "w", "r", "t", "y":
    print("CONSONANTES")
default:
    print("UNKNOWN")
}

let stillAnotherPoint = (9,0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("se halla sobre el eje, a distancia \(distance) del origen")
default:
    break
}

// Control transfer: continue, break, fallthrough, return, throw.
let sentence = "Great minds think similar"
var filteredSentence = String()
let charactersToRemove: [Character] = ["a","e","i","o","u"]
for ch in sentence {
    print(ch)
    
    if(charactersToRemove.contains(ch)) {
        // DO NOTHING
        continue
    }
    filteredSentence.append(ch)
    
    if(ch == "d") {
        break
    }
}
filteredSentence

let integerToDescribe = 5
var description = "Num \(integerToDescribe) is"
switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " a prime number and"
    fallthrough
default:
    description += " an int number"
}

var people = ["name": "Jesus", "age": 30, "isMale": true] as [String : Any]

func testUserValidation (person: [String : Any]) {
   guard let surname = people["name"] else {
        print("Name unknown")
        return
    }
    print(surname)
}

testUserValidation(person: people)


if #available(iOS 12, macOS 10.12, *) {
    // Exec actions with iOS12+, macOS 10.12+
} else {
    // Old code.
}
