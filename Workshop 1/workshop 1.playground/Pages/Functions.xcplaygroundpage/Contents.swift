//: [Loops](@previous)
/*:
 
 # Functions
 
 Functions (methods) allow programmers to encapsulate code and call on it when it's needed instead of copying and pasting it several times across an application. This means that if you find a bug or you need to update the code, you only do so once, and not in every place you use the code.
 
 **`DRY:`** `Don't Repeat Yourself`
 
 - _**Functions are self-contained chunks of code that perform a specific task.** You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed._ — [Swift Book](https://docs.swift.org/swift-book/LanguageGuide/Functions.html):
 
 ---
 
 ## Defining and Calling Functions
 
 A function is defined by using these three concepts:
 
 - **Parameters:** typed input variables (optional)
 - **Return Type:** type of value passed back as output (optional)
 - **Function Name:** name that describes the task the function performs
 
 Function definitions must be unique to a function, otherwise you will get an error that you are redefining an existing function. As long as the parameters or return type is different, then you can have multiple functions with the same name.
 
 When we use a function, we "call" the function by using the **function name** and passing any input values — arguements — that match the function's parameters.
 
 ---
 
 ### Function Defintion
 
 Below we have an example function that greets a person when given their name. It contains one **input parameter** called `person` defined as a `String`. The **output return value** is also of type `String` which will contain the greeting message.
 
 */
/**
 Simple greeting function.
 - parameter person: The person's name to be greeted

 */
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
/*:
 
 You might have noticed the markup used before the function defintion. This is called documentation and it is very important when you are working with other developers so that they know what your function is, what it does, and exactly what each parameter is.
 
 You can see your documentation by clicking on the function name and holding the `option` key.
 
 ---
 
 ### Calling Functions
 
 We call our `greet()` function by writing the function name and passing `"Anna"` as the `person` parameter. We can store the return value in variable like message so we can then print it later.
 
 Alternatively, since `print()` itself is a a function that takes an unnamed `String` parameter, we can pass the `greet()` function as its argument; this allows us to print the greeting directly without storing it's result in an extra variable.
 
 */
let message = greet(person: "Anna")
print(message)

print(greet(person: "Brian"))
/*:
 
 This function can be simplified, by combining the message creation and the return statement into one line.
 
 */
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
/*:
 
 ---
 
 ## Function Parameters and Return Values
 
 You have a lot of freedom in how you define parameters and return values when using Swift. You can create very simple utility functions or something complex to suit your needs.
 
 ---
 
 ### Functions Without Parameters
 
 You can define functions that have no input parameters, such as this example:
 
 */
func sayHelloWorld() -> String {
    return "hello world"
}

print(sayHelloWorld())
/*:
 
 ---
 
 ### Functions With Multiple Parameters

 You can also define functions that have many parameters for more complex logic. The first parameter can be left unnamed — by using `_` — but all parameters after that must be named.
 
 Here we are defining a second function named `greet()` but here it has two parameters which makes it unique from the earlier `greet()` function.
 
 */
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } // implicit else
    return greet(person: person)
}

print(greet(person: "Anna", alreadyGreeted: true))
print(greet(person: "Jenny", alreadyGreeted: false))
/*:
 
 ---
 
 ### Functions Without Return Values

 If you don't need to reuse the result of you function, ir might make more sense to not have a return value for your function. This is common with functions that print to the console, or otherwise something to the user.
 
 The return type and `->` is then optional if it is of type `Void`.
 
 */
func greeting(person: String) -> Void {
    print("Greetings, \(person)!")
}

greeting(person: "Dave")
/*:
 
 ---
 
 ## Function Argument Labels and Parameter Names
 
 Parameters each have a label and a name:
 
 - the label is what you see when you are calling the function
 - the name is the variable name inside the function
 
 By default, the parameter name becomes the label, but you can override this by defining your own label.
 
 In this example the `person` parameter label and name are the same, but the `hometown` parameter is labelled `from`.
 
 */
/**
 Slightly more complex greeting function.
 - parameters:
    - person: The person's name to be greeted
    - hometown: Where the person lives
 */
func greet(person: String, from hometown: String) {
    print("Hello \(person)!  Glad you could visit from \(hometown).")
}

greet(person: "Bill", from: "Cupertino")
/*:
 
 If you want to learn more about functions in Swift, read the  [Functions](https://docs.swift.org/swift-book/LanguageGuide/Functions.html) page in the Swift Book — _many of these examples come directly from there._
 
 */
//: [Playing around with Swift](@next)
