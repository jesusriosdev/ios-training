import UIKit

//var greeting = "Hello, playground";
//print("hello juanga!")

// Constant: DOESNT CHANGE
let maximumNumberOfLoginAttempts = 3

// Variable: CAN CHANGE
var currentLoginAttemps = 0

var x = 0.0, y = 0.0, z = 0.0

var welcomeMessage : String
welcomeMessage = "Hi, what's up?"

var red, green, blue : Double

let π = 3.141592
var 😀 = "happy"

😀 = "happier"

print("number of current login attemps is: \(currentLoginAttemps) of a maximum number of: \(maximumNumberOfLoginAttempts)")

//let age : UInt8 = 30
let minValueU = UInt8.min // 2 * 0 - 1
let maxValueU = UInt8.max // 2 * 8 -1

let minValue = Int32.min
let maxValue = Int32.max

let f1 : Float = 3.14159265
let d1 : Double = 3.14159265

let meaningOfLife = 42 // Int
let pi = 3.14159 // Double
let anotherPi = 3 + 0.14159 // Double


let decimalInteger = 17 // 1*1- + 7
let binaryInteger = 0b10001 //
let octalInteger = 0o21
let hexadecimalInteger = 0x11 // 1*16^1 + 1*16^0

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0


let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000.000_000_1

//let cannotBeNegative: UInt8 = -1
//let tooBig: UInt8.max + 1


let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
//let twoThousandAndOne = twoThousand + one
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber

let integerPi = Int(piNum)

typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max // UInt16.max

let orangeAreAOrange = true
let foodIsDelicious = false

var isAged : Bool
isAged = true
if isAged {
    print("You can enter")
} else {
    print("You cannot enter")
}

var age = 30
if age >= 18 {
    print("Yeah, you cant enter")
}

// Tuples
let http404error = (404, "Not found.")
let (statusCode, statusMessage) = http404error
print("Code: \(statusCode)")
print("Message: \(statusMessage)")

let (justStatusCode, _) = http404error
print("Just the code: \(justStatusCode)")

print("Code is: \(http404error.0)")
print("Message is: \(http404error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("The code is: \(http200Status.statusCode)")
print("The message is: \(http200Status.description)")

let possibleAge = "30"
let convertedAge = Int(possibleAge) // Int?

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?
surveyAnswer = "30"
//print(surveyAnswer)

if convertedAge != nil {
    print("Age not null: \(convertedAge!)")
} else {
    print("Age is null")
}

if let actualAnswer = surveyAnswer {
    // If it reach here, surveyAnswer is not nil
    print("Value of \(surveyAnswer) is \(actualAnswer)")
} else {
    // If it reach here, surveyAnswer is nil
    print("nil")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    
    print("\(firstNumber) < \(secondNumber) < 100")
}

let possibleString: String? = "An optional string"

let forcedString: String = possibleString!

let assumedString: String! = "hola hola hola"
let implicitString: String = assumedString

func canThrowError() throws {
    
}

do {
    
    try canThrowError()
    
    // no error here
} catch {
    
    // error here
}

func makeASandwich() throws {
    
}

do {
    
    try makeASandwich()
    // no error
} catch {
    // error
}


//asserts (debug), precondition (build)

let age2 = -5
//... continues

//assert(age2 >= 0, "The age of a person cannot be negative")
precondition(age2 >= 0, "The age of a person cannot be negative")

if(age2 > 10) {
    print("OK")
} else if(age2 >= 0){
    print("tiny")
} else {
    assertionFailure("The age o a person cannot be negative")
}
