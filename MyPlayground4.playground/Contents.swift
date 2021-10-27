import UIKit

//var greeting = "Hello, playground"


// struct vs Class

struct SomeStruct {
    // Definition
}

class SomeClass {
    // Definition
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)

someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

//someResolution.width = 1280 // LET STRUCTS CANT CHANGE

someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)

let vga = Resolution(width: 800, height: 600)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

// STRUCTS ARE VALUED
var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")
print("\(hd.width) x \(hd.height)")

// ENUMS ARE VALUED
enum CompassPoint {
    case north, south, east, west
}
var currentDirection = CompassPoint.north
var oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)

// CLASSES ARE REFERENCED

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

tenEighty

if tenEighty === alsoTenEighty { // !==
    print("SAME OBJECT")
} else {
    print("NOT THE SAME")
}
