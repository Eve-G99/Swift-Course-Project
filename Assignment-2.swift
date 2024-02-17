//6350-Assignment2

//Task 1.1
var firstName = "Yuetong"
print("Hi \(firstName)")

//Task 1.2
let maxStudent = 30
print("The max students allowed is \(maxStudent)")

//Task 1.3
var degreesFahrenheit = 70.0
var celsius = (degreesFahrenheit - 32.0) * (5.0/9)
print(celsius)

//Task 2.1
var name = "Eve"
var age = 24
print("Hello, my name is \(name), and I am \(age) years old.")

//Task 2.2
print("I'm \(age) years old. Next year, I'll be \(age + 1) years old.")

//Task 3
var newName = String("Eve")
var newAge = Int(24)
var priceDouble = Double(99.9)
var priceFloat = Float(19.95)
var isAuthenticated = Bool(true)

print(newName)
print(newAge)
print(priceDouble)
print(priceFloat)
print(isAuthenticated)

//Task 4.1
var A = Int(10)
var B = Int(5)
var C = Int(10)

if A == B || B == C || A == C {
    print("True")
}
//Task 4.2
var bookA = 14
var bookB = 7
var bookC = 21

let currTime = 5

if bookA <= currTime || bookB <= currTime || bookC <= currTime {
    print("You need to return at least one Book!")
}
else{
    print("There's no book need to return")
}

//Task 4.3
let scoreAlice = 85
let scoreBob = 92

if scoreAlice >= scoreBob{
    print("Alice is higher, and her score is\(scoreAlice)")
} else {
    print("Bob is higher, and his score is \(scoreBob)")
}

//Task 5.1
var optionalEx: String? = "Hello, Optional!"
if optionalEx != nil{
    print(optionalEx)
}else{
    print("No value provided.")
}

//Task 5.2
var optionalInt: Optional<Any> = "This could be anything"

//Task 5.3
var userInput: String?
if let value = userInput {
    print("User Input received:\(value)")
}else{
    print("No user input provided")
}

//Task 5.4
var newUserInput: Any?
newUserInput = "Some input"

func checkInput(_ input: Any?) {//must a space between_ input
    guard let value = input as? String else {
        print("Nothing provided, or input is not a string")
        return
    }
    // Has Value, continue
    print("User input received: \(value)")
}

checkInput(newUserInput)
