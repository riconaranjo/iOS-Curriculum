//: [Doubles](@previous)
/*:
 
 # Booleans
 
 In Swift we can represent boolean values using the `Bool` datatype. A boolean value can only `true` or `false`.
 
 */
let bool: Bool = true
var codingIsFun = true    // only when I'm not debugging

let pi = 3.1415926
let piGreaterThanFive = pi > 5

if piGreaterThanFive {
    print("Physics is broken!?")
}
/*:
 
 You can negate (invert) a boolean value using the negation `!` operator.
 
 */
if !piGreaterThanFive {
    print("Physics is fine")
}
/*:
 
 You can see above that a logical operation `(pi > 5)` results in a boolean value, you can set a `Bool` variable equal to the result.
 
 */
//: [Strings](@next)
