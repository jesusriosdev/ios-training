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

var x = 5
func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print(number2)
}

addOne(number: x)

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

