//: [Conditional Statments](@previous)
/*:
 
 # Switch
 
 What if you have a bunch of `if` cases for the same variable?
 
 _Like this..._
 
 */
var value = "M"

if value == "k" {
    print("\(value) is the same as 10^3")
} else if value == "M" {
    print("\(value) is the same as 10^6")
} else if value == "G" {
    print("\(value) is the same as 10^9")
} else {
    print("value doesn't match any case")
}
/*:
 
 The `switch` code block below is identical to the `if` code block above, but it is both quicker to write and easier to read.
 
 */
switch value {
case "k":
    print("\(value) is the same as 10^3")
case "M":
    print("\(value) is the same as 10^6")
case "G":
    print("\(value) is the same as 10^9")
default:
    print("value doesn't match any case")
}
/*:
 
 You can add multiple conditions to one case, for example:
 
 */
value = "m"

switch value {
case "k":
    print("\(value) is the same as 10^3")
case "M":
    print("\(value) is the same as 10^6")
case "G":
    print("\(value) is the same as 10^9")
case "c", "m", "u":                       // multiple conditions
    print("\(value) is too small")
default:
    print("value doesn't match any case")
}
/*:
 
 More infomation about [Switch Statements](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html).
 
 */
//: [Loops](@next)
