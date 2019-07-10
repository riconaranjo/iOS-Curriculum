//: [Declarations](@previous)
/*:
 
 # Integers
 
 Now that we know how to declare constants and variables, let's get back to datatypes.
 
 In Swift we can represent integers using the `Int` datatype. Integers are positive or negative whole numbers without any decimal values.
 
 You can declare integers in a couple of different ways:
 
 1. You can either let Xcode infer that the number is an integer — by the absence of decimals.
 2. You can explicitly tell Xcode the datatype
     - either by writing `: Int` after the variable name.
     - or by assigning its value to `Int(someNumber)` and converting `someNumber` to an integer.

 */
let x = 1           // implicit
let y: Int = -2     // explicit
let z = Int(100.0)  // explicit
//: [Doubles](@next)
