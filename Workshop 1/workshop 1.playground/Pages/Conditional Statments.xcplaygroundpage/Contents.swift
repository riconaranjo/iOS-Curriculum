//: [Previous](@previous)
/*:
 
 # Conditional Statements
 
 Let's say you want to create a simple program to send a welcome message to every student at the school. We already have our dictionary with student numbers matched to a student name, but let's add a few empty student numbers reserved for future students.
 
 */
var students = [
    101: "Jeremy Smith",
    102: "Carlos Gutierrez",
    103: "Emma Martin",
    104: "",
    105: "",
    106: "",
]

print("\n# greetings [attempt]\n")

for student in students.sorted(by: <) {
    print("Hello, welcome to school, \(student.value)!")
}
/*:
 
 You'll notice that we now have a bunch of greetings with no name. How could we make it so that the greeting is only printed if that student number has a name?
 
 **Control flow** \*cough cough\*
 
 ---
 
 ## If Statements
 
 The simplest solution to our problem is to check if the string (value) associated with a key is empty, and if it isn't, then we print our greeting message.
 
 We can do this with an `if` statement.
 
 */
print("\n# greetings [correct]\n")

for student in students.sorted(by: <) {
    if !student.value.isEmpty { // if the string is not empty
        print("Hello, welcome to school, \(student.value)!")
    }
}
/*:
 
 As you can see, an `if` loop allows us to create specific actions based on certain conditions or variables. In this example we used the `if` code block at it's most basic: just a simple check for a condition, and some code that is executed if that condition is true.
 
 ---
 
 ## Optional Binding: `if let`
 
 You can use the `let` in the condition of an `if` statement to find out if an optional contains a value, or if a conversion is valid (such as from `String` to `Int`). This is called optional binding.
 
 */
let randomInput = [ "123", "five" ]

let randomIndex = Int.random(in: 0...1)
var perhapsNumber = randomInput[randomIndex]

if let number = Int(perhapsNumber) {
    print("'\(perhapsNumber)' is a valid integer: \(number)")
}
else {
    print("'\(perhapsNumber)' is not a valid integer")
}
/*:
 
 In this example the if the optional `Int?` returned by `Int()` is an integer value, tht value is used to create a new constant `number`.
 
 ---
 
 ## `else` / `else if`
 
 We can spice up the `if` statement with `else` and `else if` for additional branches of execution.
 
 */
var temperature = -32

if temperature >= 25 {
    print("it's quite hot, make sure to stay hydrated!")
} else if temperature <= -20 {
    print("it's quite cold, make sure to bundle up!")
} else {
    print("it's nice outside")
}
/*:
 
 Using `else if` allows us to add a condition that is only checked if the preceding conditions don't match. Since temperature is less than -20, a message to bundle up was printed.
 
 The final `else` statement is optional, and can be removed if no default case is needed.
 
 */
temperature = 15

if temperature >= 25 {
    print("it's quite hot, make sure to stay hydrated!")
} else if temperature <= -20 {
    print("it's quite cold, make sure to bundle up!")
}
/*:
 
 In this case, nothing is printed since the temperature is neither hot nor cold enough to trigger either the `if` or `else if` conditions.
 
 */
//: [Switch](@next)
