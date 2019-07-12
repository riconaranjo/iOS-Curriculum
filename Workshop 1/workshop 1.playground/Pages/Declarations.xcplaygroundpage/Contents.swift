//: [Datatypes](@previous)
/*:
 
 # Declarations
 
 In order to create a datatype we must declare it. If we don't declare it and try to use it, Xcode will complain telling you **Use of unresolved identifier 'x'** (where x is the variable name).
 
 _This — by the way — is called a compilation error._
 
 In order to avoid this error, we have two ways of declaring a variable:
 
 1. `let` (constant)
 2. `var` (variable)
 
 ---
 
 ## Using `let`
 
 You can define a constant variable such as pi by typing the following:
 
 */
let pi = 3.1415926
/*:
 
 Let's use pi to compute the  Earth's orbital path around the sun (approx.). The average distance between the Earth and the Sun is about 149.6 million km according to Google, so let's use that.
 
 */
let distance = 149_600_000.0    // 149.6 million km
let circumference = 2 * pi * distance

print("Earth travels about \(circumference) km every year")
/*:
 
 You might have noticed two interesting things about Swift in that example:
 
 - You can add `_` to numbers as separators to make it more readable.
 - _e.g. `100_000_000` as opposed to `100000000`_
 - You can print variable values using **String Interpolation**.
 - e.g. `"x has the value: \(x)"`
 
 Additionally we added the `.0` to the distance to make it easier to multiply it with pi when both the same datatype (`Double`). If one was a whole number and the other a decimal number, Xcode would have complained. We talk about this later.
 
 ---
 
 ## Using `var`
 
 Using the `let` keyword allows us to create constant variables, but what if we want to change the distance so that instead of the Earth, we wanted to know Mercury's orbit?
 
 Add these two lines below our code to calculate the Earth's orbit:
 
 */
distance = 57_910_000.0    // 57.91 million km
circumference = 2 * pi * distance

print("Mercury travels about \(circumference) km every year")
/*:
 
 Xcode doesn't like that, does it?
 See we told Xcode that we would never change the values of `distance` and `circumference` but here we are trying to change it. We lied to Xcode.
 
 It's ok, Xcode will forgive us; Xcode even offers to fix our problem for us. If you notice on the right side of the lines where we are trying to change the values of `distance` and `circumference`, there is a message in red: **Cannot assign to value: 'distance' is a 'let' constant**.
 
 If you click on this message, it will expand with a small message **Change 'let' to make it mutable** and a **Fix** button (Mutable means it can change; not a constant). If you press the **Fix** button Xcode will change the `let` declaration to a `var` declaration.
 
 Do this for both the `distance` and `circumference` variables and run your code.
 
 You should see both of the orbital distances travelled by the Earth and Mercury printed to the console.
 
 ---
 
 Read more about declarations in [The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html) in the Swift Book.
 */
//: [Optionals](@next)
