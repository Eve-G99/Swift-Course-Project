//6350-Assignment3

//Task 1.1 & 1.2
var someInts: [Int] = []
for i in 1...10 {
    someInts.append(i)
}
print(someInts[4], someInts[7])

//Task 1.3
var someStrings: [String] = []
for i in 1...5 {
    someStrings.append(String(i))
}
print(someStrings)
let oneString = someStrings.remove(at:3)
print(oneString)
print(someStrings)

//Task 2.1
for i in 1...20 {
    if i % 2 != 0 {
        print(i)
    }
}
print("----------This is a Dividing line----------")

//Task 2.2
for i in (1...20).reversed() {
    print(i)
}
print("----------This is a Dividing line----------")

//Task 2.3
var i = 1
while i < 21{
    print(i)
    i += 1
}
print("----------This is a Dividing line----------")

//Task 2.4
for j in 1...30 {
    if j % 3 == 0{
        continue
    }
    print(j)
}
print("----------This is a Dividing line----------")

//Task 2.5
var fruits: [String] = ["Banana", "Apple", "Cherry"]
for fru in fruits{
    print(fru)
}

//3.1
func sum(numA : Int, numB : Int) -> Int {
    return (numA + numB)
}
let resNum = sum(numA: 3,numB: 5)
print(resNum)

//3.2
func concatenate(StrA: String, StrB: String) -> String {
    return (StrA + StrB)
}
let resStr = concatenate(StrA: "Hello", StrB: "World")
print(resStr)

//3.3
func celsiusToFahrenheit(Celsius: Float) -> Float {
    return ((Celsius * 9.0/5) + 32.0)
}
let resTemp = celsiusToFahrenheit(Celsius: 20.0)
print(resTemp)

//3.4
func isEven(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}
let isResEven = isEven(num: 7)
print(isResEven)

//3.5
func greet(name: String) -> String {
    return "Welcome! \(name)!"
}
let resGret = greet(name: "Eve")
print(resGret)

//4.1
enum WeekDays: CaseIterable {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

for day in WeekDays.allCases {
    print(day)
}

//4.2
enum directions {
    case left
    case right
    case up
    case down
}

print(directions.down)

//4.3
enum NetworkError: String {
    case noInternet = "No Internet connection."
    case serverError = "The server encountered an error."
    case timeout = "The request timed out."
    case unauthorized = "Authentication failed."
}

let sampleError = NetworkError.noInternet
print("Sample Error: \(sampleError.rawValue)")

//4.4
enum AppScreen {
    case home
    case settings
    case profile
}

let currentScreen = AppScreen.settings

switch currentScreen {
case .home:
    //is a pattern, Execute this block of code if someValue matches pattern1 
    print("Home Screen")
case .settings:
    print("Settings Screen")
case .profile:
    print("Profile Screen")
}

//4.5
enum StrNum: String {
    case Six = "1614"
    case Five = "529"
    case Three = "3672"
}
let resStrNum = StrNum.Five
print(resStrNum.rawValue)

//5.1
var possibleStr: String?
if let str = possibleStr {
    print(str)
} else {
    print("There's no value")
}

//5.2 Unwrapped

//Ways to Unwrap Optionals in Swift
//Forced Unwrapping: Using the ! operator to access the value directly. This is risky and should only be done when you're certain the optional contains a value, as it leads to a runtime error if the optional is nil.
//let optionalInt: Int? = 10
//print(optionalInt!) // Prints: 10

//Optional Binding (if let): Safely unwraps the optional, and if there's a value, it's temporarily available within the scope of the if statement.
//if let unwrappedInt = optionalInt {
//    print(unwrappedInt)
//}

//Guard Statement (guard let): Similar to if let, but it unwraps optionals for the rest of the function or scope, providing an early return for nil values.
//guard let unwrappedInt = optionalInt else {
//    return
//}
//print(unwrappedInt)

//Nil Coalescing Operator (??): Provides a default value for an optional if it's nil, effectively unwrapping it or substituting another value.
//let number = optionalInt ?? 0 // Unwraps or uses 0 if nil

var possibleInt: Int?
if let unwrappedInt = possibleInt { //如果没有值，压根不进去statement
    print(unwrappedInt)
}

//5.3
func squareNum (doubleNum: Double?) -> Double? {
    if let unwrap = doubleNum {
        return unwrap * unwrap
    } else {
        return nil
    }
}

var possibleDoub: Double?
let resDoub = squareNum(doubleNum: possibleDoub) 
print(resDoub)

//5.4 ??
var LastName: String?
var LastAge: Int?
LastName = LastName ?? "Johnson" //如果有值，用自己，没有就用“Jhonson”
LastAge = LastAge ?? 36

print(LastName!) //"!"是告诉Swift我确定这里有值，不会出现Optional(Johnson)
print(LastAge)
