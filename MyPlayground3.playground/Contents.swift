import UIKit

//var greeting = "Hello, playground"

func greeting(person: String) -> String {
    
    let greet = "Greetings, \(person)!!"
    return greet
}

greeting(person: "Pitty")

func sayHelloWorld() -> String {
    return "Hello world!"
}

func greeting(person: String, isMale: Bool) -> String {
    if isMale == true {
        return "Bienvenido \(person)"
    } else {
        return "Bienvenida \(person)"
    }
}

greeting(person: "Jesus", isMale: true)

func greeting2(person: String) {
    print("Hi \(person)")
}
greeting2(person: "Jessica")

func printandCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printandCount(string: string)
}
printandCount(string: "Holaaaaa")
printWithoutCounting(string: "Holaaaaa")

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds = minMax(array: [6,3,-8,1,9,5,15,-9])

if let bounds = bounds {
    print("Values between: \(bounds.min) and \(bounds.max)")
}

let bounds2 = minMax(array: [])
if let bounds2 = bounds2 {
    print("Values between: \(bounds2.min) and \(bounds2.max)")
}

func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 6) {
    
    print(firstParamName + secondParamName)
}

//someFunction(firstParamName: 5, secondParamName: 1)
someFunction(f1: 5, f2: 1)

func greeting(_ person: String, from: String) -> String {
    return "Hola \(person), saludos a \(from)"
}

greeting("Jesus", from: "Mexicali")

func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

mean(1,2,3,4,5)

var xx = 5
func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print(number2)
}

addOne(number: xx)

func swapTwoints(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}
var someInt = 3
var otherInt = 7
print(someInt)
print(otherInt)
swapTwoints(&someInt, &otherInt)

print(someInt)
print(otherInt)

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a*b
}

var mathFunction: (Int, Int) -> Int = multiplyTwoInts

mathFunction(4,5)

func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunc(a,b))")
}

printMathResult(addTwoInts, 5, 9)
//
//stepForward(5)
//stepBackward(3)

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    
    func stepForward(_ input: Int) -> Int {
        
        return input + 1
    }

    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }

    return backward ? stepBackward : stepForward
}

var value = -7
let moveNearZero = chooseStepFunction(backward: value > 0)
//while value != 0 {
//    print("\(value)...")
//    value = moveNearZero(value)
//}

print("0...")

let names = ["XJesusssss", "Pittyy", "Ana"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
backward("Jesus", "Ivan")


var reversedNames0 = names.sorted()
var reversedNames = names.sorted(by: backward)

reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })
reversedNames = names.sorted(by: { $0 > $1 })
reversedNames = names.sorted(by: >)

func someFunctionThatTakesaAClosure(closure: () -> Void) {
    
}

someFunctionThatTakesaAClosure(closure: {
    //
})
someFunctionThatTakesaAClosure {
    //
}

let digitNames = [0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro", 5: "Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve"]
let numbers = [123, 234, 345]
let numberStrings = numbers.map { (number) -> String in
    
    var number = number // RECONVIERTE
    var output = ""
    
    repeat {
        output = "\(digitNames[number % 10]!) \(output)"
        number /= 10
    } while number > 0
    return output
}

print(numberStrings)

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()

incrementByTen()

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
completionHandlers.count

func someFunctionWithNoneEscapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func dosomething() {
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        someFunctionWithNoneEscapingClosure {
            x = 200
        }
    }
}

let instance = SomeClass()
print(instance.x)
instance.dosomething()
print(instance.x)

completionHandlers.count
completionHandlers.first?()
instance.x

enum SomeEnumerator {
    // Definition
    case hola
    case hola2
}
SomeEnumerator.hola

enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.east
directionToGo = .north

switch directionToGo {
case .north:
    print("NORTH")
case .south:
    print("SOUTH")
case .east:
    print("SOUTH")
case .west:
    print("SOUTH")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("SAFE")
default:
    print("NOT SAFE")
}

enum Beverages: CaseIterable {
    case coffe, tea, juice, redbull
}
let numberOfChoices = Beverages.allCases.count
for beverage in Beverages.allCases {
    print(beverage)
}

enum BarCode {
    case upc (Int, Int, Int, Int)
    case qrCode (String)
}

var productBarcode = BarCode.upc(8, 85909, 51226, 3)
//productBarcode = .qrCode("ASDFGHJKL")
print(productBarcode)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR: \(productCode)")
}

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum Status: Int {
    case Active = 1
    case Inactive = 2
    case Cancelled = 3
}

let earthOrder = Planet.earth.rawValue
let northDirection = CompassPoint.north.rawValue

let possiblePlanet = Planet(rawValue: 5)
let planetPosition = 4
if let anyPlanet = Planet(rawValue: planetPosition) {
    switch anyPlanet {
    
    case .earth:
        print("SAFE")
    default:
        print("NO PLANET")
    }
} else {
    print("NO PLANET!!!")
}
