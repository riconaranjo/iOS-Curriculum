//: [Conditional Statments](@previous)
/*:
 
 ## Switch
 
 What if you have a bunch of `if` cases?
 
 _Like this_
 
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
// M is the same as 10^6

// M is the same as 10^6
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
case "c", "m", "u":
    print("\(value) is too small")
default:
    print("value doesn't match any case")
}
// m is too small
/*:
 
 ## `fallthrough`
 
 One key difference between Swift and other languages such as C and Objective-C is that there is no default fallthrough between cases; instead they require and explicit `break` at the end of every case. Once the first matching case finishes executing, the `switch` statement finishes executing. This makes `switch` statements in Swift much more concise and predictable than in C, avoiding accidentally executing multiple cases.
 
 If you want C-style fallthrough behaviour, you can use the `fallthrough` keyword.
 
 */
let letter = "a"
var message = "\(letter) is a "

switch letter {
case "a", "e", "i", "o", "u":
    message += "vowel "
    fallthrough
default:
    message += "letter"
}
print(message)
// a is a vowel letter
/*:
 
 The `fallthrough` keyword causes the case condition of the next case not to be checked, it simply directly moves code execution to the statements inside the following case.
 
 */
//: [Loops](@next)
