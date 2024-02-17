
import Foundation
//6350-Assignment4
//Name: Yuetong Guo
//Student Number: 001564631

//Task 1.Structure
struct Book {
    var title: String
    var author: String
    var pages: Int
    var publicationYear: Int
    
    func displayInfo() -> String{
        return """
                Title: \(title)
                Author: \(author)
                Pages: \(pages)
                Published: \(publicationYear)
                """
    }
}
//Instance
let bookOne = Book(title: "Big Magic", author: "Elizabeth Gilbert", pages: 279, publicationYear: 2021)
let bookTwo = Book(title: "The Consolations of Philosophy", author: "Alain de Botton", pages: 572, publicationYear: 2003)
let bookThree = Book(title: "Why I Wirte", author: "George Orwell", pages: 220, publicationYear: 1865)
let bookFour = Book(title: "Memoirs of a Geisha", author: "Arthur Golden", pages: 380, publicationYear: 1997)

print(bookThree.displayInfo())

print("---------- Dividing Line ---------- ")


//Task 2.Class
class Shape {
    func area() -> Double {
        return 0
    }
    func perimeter() -> Double {
        return 0
    }
}

// subClass: Rectangle
class Rectangle: Shape{
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
         self.width = width
         self.height = height
    }
    
    override func area() -> Double {
        return width * height
    }
    
    override func perimeter() -> Double {
        return (width + height) * 2
    }
    
    func printDetails() -> String {
        return """
                Rectangle:
                Area = \(area())
                Perimeter = \(perimeter())
                """
    }
}

// subClass: Circle
class Circle: Shape{
    var radius: Double
    
    init(radius: Double){
        self.radius = radius
    }
    
    override func area() -> Double {
        return Double.pi * (radius * radius)
    }
    
    override func perimeter() -> Double {
        return Double.pi * (2 * radius)
    }
    
    func printDetails() -> String {
        return """
                Circle:
                Area = \(area())
                Perimeter = \(perimeter())
                """
    }
}

// Test Sample
let sampleRectangle = Rectangle(width: 7.0, height: 21.5)
print(sampleRectangle.printDetails())

let sampleCircle = Circle(radius: 5.0)
print(sampleCircle.printDetails())

print("---------- Dividing Line ---------- ")


//Task 3.Protocols
//3.1 Vehicle
protocol Vehicle {
    var isAvailable: Bool { get set }
    mutating func drive() -> String
}

struct Car: Vehicle {
    var isAvailable: Bool
    
    init(isAvailable: Bool = true) {
        self.isAvailable = isAvailable
    }
    
    mutating func drive() -> String {
        if isAvailable {
            isAvailable = false
            return "Take the car out."
        } else {
            return "The car is not available."
        }
    }
}

struct Bike: Vehicle {
    var isAvailable: Bool
    
    init(isAvailable: Bool = true) {
        self.isAvailable = isAvailable
    }
    
    mutating func drive() -> String {
        if isAvailable {
            isAvailable = false
            return "Take the bike out."
        } else {
            return "The bike is not available."
        }
    }
}
// Test Sample
var sampleCar = Car(isAvailable: true)
print(sampleCar.drive())
print(sampleCar.drive())

var sampleBike = Bike(isAvailable: false)
print(sampleBike.drive())

print("---------- Dividing Line ---------- ")


//3.2 Shape
protocol ShapeProtocol {
    func name() -> String
    func area() -> Double
    func perimeter() -> Double
}

class SquareShape: ShapeProtocol {
    var sideLen: Double
    
    init(sideLen: Double) {
        self.sideLen = sideLen
    }
    
    func name() -> String {
        return "Square"
    }
    
    func area() -> Double {
        return (sideLen * sideLen)
    }
    
    func perimeter() -> Double {
        return (4 * sideLen)
    }
}

class CircleShape: ShapeProtocol {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func name() -> String {
        return "Circle"
    }
    
    func area() -> Double {
        return Double.pi * (radius * radius)
    }
    
    func perimeter() -> Double {
        return Double.pi * (2 * radius)
    }
}

//Sample Test
let square = SquareShape(sideLen: 20.0)
print("""
        Shape: \(square.name())
        Area = \(square.area())
        Perimeter = \(square.perimeter())
        """)

let circle = CircleShape(radius: 3.0)
print("""
        Shape: \(circle.name())
        Area = \(circle.area())
        Perimeter = \(square.perimeter())
        """)

print("---------- Dividing Line ---------- ")


//Task 4.Swift Extensions
//4.1
extension Int {
    func cube() -> Int{
        return (self * self * self)
    }
}
//Sample Test
let number = 7
print("Cube of \(number) is \(number.cube())")

//4.2
extension String {
    func toInt() -> Int? {
        return Int(self)
    }
}
//Sample Test
let sampleString1 = "6880"
if let toIntString = sampleString1.toInt() {
    print("Int Version: \(toIntString)")
} else {
    print("This String cannot be converted.")
}

let sampleString2 = "Swift"
if let toIntString = sampleString2.toInt() {
    print("Int Version: \(toIntString)")
} else {
    print("This String cannot be converted.")
}

//4.3
extension Array where Element: Comparable {
    func minMax() -> (min: Element, max: Element)? {
        guard !self.isEmpty else { return nil }
        return (self.min()!, self.max()!)
    }
}

//Sample Test
let sampleArray1 = [29, 7, 15, 88, -4, 2]
if let result = sampleArray1.minMax() {
    print("Minimum: \(result.min), Maximum: \(result.max)")
} else {
    print("Array is empty.")
}

let sampleArray2: [Int] = []
if let result = sampleArray2.minMax() {
    print("Minimum: \(result.min), Maximum: \(result.max)")
} else {
    print("Array is empty.")
}

//4.4
extension Date {
    func formattedString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        return formatter.string(from: self)
    }
}

//Sample Test
let currentDate = Date()
print("Formatted Date: \(currentDate.formattedString())")
