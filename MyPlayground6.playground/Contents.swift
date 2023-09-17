import UIKit

struct TimesTable {
    let multiplier:Int
    
    subscript(index:Int)->Int {
        return multiplier*index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("6x3 = \(threeTimesTable[6])")

for idx in 0...10 {
    
    print("\(idx)x3 = \(threeTimesTable[idx])")
}

enum Planet:Int {
    case unknown = 0, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    static subscript(n: Int) -> Planet {
        if let planetFound = Planet(rawValue: n) {
            return planetFound
        } else {
            return Planet(rawValue: 0)!
        }
    }
}

let mars = Planet[55]

struct Matrix {
    
    let rows: Int, columns: Int
    
    var grid: [Double]
    
    init(rows:Int, columns:Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row:Int,column:Int) -> Bool {
        return row >= 0 && column >= 0 && row < rows && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range.")
            return grid[(row*column)]
        }
        set {
            
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
