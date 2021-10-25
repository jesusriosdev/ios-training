import UIKit

var greeting = "Hello, playground"

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
