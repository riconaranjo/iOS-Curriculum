//: [Declarations](@previous)
/*:
 
 # Optionals
 
 Optionals are used in Swift where a variable's value may be absent (`nil`).
 
 **Either:**
 
 - there is a value, and you have to unwrap the optional
 - or, there is is no value at all
 
 The `Int()` initializer returns an `Int?` instead of `Int` because it might fail to convert the `String` to a numeric value.
 
 */
var twentyThree = Int("23") // -> 23
var five = Int("five")      // -> nil
/*:
 
 _An initializer is used to create an instance of a datatype (otherwise known as constructors in other languages)_
 
 ---
 
 ## nil
 
 In Swift, you can set an optional value to nil, but you cannot do this with non-optional values. By default optional variables are set to nil
 
 */
twentyThree = nil
var optionalValue: Int? // -> nil
/*:
 
 ---
 
 ## Unwrapping Optionals
 
 Unwrapping an optional means checking the value inside an optional variable. You can check if an optional has a value using an `if` statement (these are explained in [Conditional Statements](#Conditional%20Statements)) to check if the value is `nil`.
 
 You can then use the `!` operator to force unwrap the value contained in the optional. If you use the `!` you **must** be sure that the optional contains a non-nil value, otherwise your program will crash, and you will be unhappy.
 
 */
optionalValue = Int("20")

if optionalValue != nil {
    print("the optional has a value of \(optionalValue!)")
}
/*:
 
 ---
 
 ## Optional Binding
 
 Another way of checking if an optional has a non-nil value, is to use optional binding:
 
 */
if let value = optionalValue {
    print("the optional still has a value of \(value)")
}
/*:
 
 Read more about optionals in [The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html) in the Swift Book.
 
 */
//: [Integers](@next)
