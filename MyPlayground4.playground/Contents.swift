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

// Stored properties
struct FixedLenghtRange {
    var firstValue : Int
    let length : Int
}

var rangeOfThreeItems = FixedLenghtRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLenghtRange(firstValue: 0, length: 4)

// Lazy stored properties
class DataImporter {
    var fileName = "data.txt"
    
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    
}

let manager = DataManager()
manager.data.append("Dataa")
manager.data.append("more dataaa")
// importer not created
manager.importer.fileName
// importer created

// Computed properties
struct Point {
    var x = 0.0, y = 0.0
    
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
//            let centerX = origin.x + size.width / 2
//            let centerY = origin.y + size.height/2
//            return Point(x: centerX, y: centerY)
            Point(x: origin.x + size.width / 2, y: origin.y + size.height/2)
        }
        set(newCenter) {
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center
let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    
    var volume: Double {
        return width * height * depth
    }
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.volume
//cuboid.volume = 23.33 // THIS IS AN ERROR

// PROPERTY OBSERVER
// willSet y didSet

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("Number of steps is going to be: \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Number of steps has incremented by: \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 220

// TYPE PROPERTIES
struct SomeStruct2 {
    var counter = 0
    static var storedTypeProperty = "Some VALUE"
    static var computedTyoeProperty: Int {
        return 1
    }
}

var instanceStr = SomeStruct2()

var otherInstanceStr = SomeStruct2()

SomeStruct2.storedTypeProperty

enum SomeEnum {
    static var storedTypeProperty = "SomeeeValue"
    static var computedTypeProperty: Int {
        return 5
    }
}

SomeEnum.storedTypeProperty

class SomeClass2 {
    static var storedTypeProperty = "SomeeValuee"
    static var computedTypeProperty: Int {
        return -4
    }
    
    class var overrideableComputedType: Int {
        return 172
    }
}

