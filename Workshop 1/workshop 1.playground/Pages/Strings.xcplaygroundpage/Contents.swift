//: [Booleans](@previous)
/*:
 
 # Strings
 
 In Swift we can represent text using the `String` datatype. A `String` is a series of characters — _a string of characters_.
 
 */
let aString = "this is a string"

let multiLine = """
this is a multiline string

you can include multiple lines of text
- all in the same string
"""

let aMultiLine = """
this is a string
"""
// aString and aMultiLine are both the same
/*:
 
 Sometimes you want to include special characters such as quotations in your strings; this is called escaping, and you do this by using a backslash `\` before that character you want to escape. _You will have to do this for each  character you want to escape._
 
 */
let escape = "I shouted \"FREEDOM\" as I jumped out the window!"
/*:
 
 Common escaped characters are `\n` for new line, and `\t` for tab.
 
 ---
 
 ## Empty Strings
 
 You can create empty strings — to be filled in later by user input or online data — in two ways (source: [Initializing an Empty String](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html)):
 
 */
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other
/*:
 
 Use the `.isEmpty` method to check if a string is empty.
 
 */
if emptyString.isEmpty {
    print("Nothing to see here")
}
/*:
 
 ---
 
 ## String Concatenation
 
 You can add / concatenate strings together which allows you to build longer and more complex strings, such as a greeting.
 
 */
let firstName = "Elon"
var message = "Hello there " + firstName + "!"
print(message)
/*:
 
 You can also append to the end of a string using either the `.append` method or with the `+=` operator.
 
 */
message.append(" Welcome")
message += "!"
print(message)
/*:
 
 ---
 
 ## String Interpolation
 
 Sometimes, instead of adding strings it makes more sense to insert a value into a string — this value can also be a string, but it could be an integer or another datatype.
 
 */
let newMessage = "Hello there \(firstName)!"
print(newMessage)
/*:
 
 Read more about [Strings and Characters](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html) in the Swift Book.
 
 */
//: [Arrays](@next)
