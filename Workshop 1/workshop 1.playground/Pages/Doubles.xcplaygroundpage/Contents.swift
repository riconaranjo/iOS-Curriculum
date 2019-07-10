//: [Integers](@previous)
/*:
 
 # Doubles
 
 In Swift we can represent decimal numbers — properly known as floating-point numbers — using the `Double` datatype. Floating-point numbers are numbers that have fractional components, colloquially referred to as as decimal values.
 
 */
let p = 1.0           // implicit
let q: Double = -2    // explicit
let r = Double (99)   // explicit
/*:
 
 You may have noticed that Xcode does not implicitly converts numbers from type `Int` into `Double`.
 
 Try this code:
 
 */
let aDouble = 5.0     // this is a Double
let anInteger: Int = aDouble
// cannot implicitly covert Double to Int
/*:
 
 _Or the opposite_

 */
let someInteger = 5   // this is an Int
let someDouble: Double = someInteger
// cannot implicitly covert Int to Double
/*:
 Xcode in both cases will complain with something along the lines of: **Cannot convert value of type 'Double' to specified type 'Int'**.
 
 How do we fix this? The simple solution is to cast the value to the desired datatype using either `Int()` or `Double()`
 */
let myDouble = 5.0
let myInteger: Int = Int(myDouble)  // explicit conversion
//:
let yourInteger = 5
let yourDouble: Double = Double(yourInteger)
//: [Booleans](@next)
