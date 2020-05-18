# 1. Getting Started with Swift

_This workshop is about learning how to code in Swift, using Xcode Playgrounds._

| Topics       | Details                            |
| ------------ | ---------------------------------- |
| Datatypes    | declarations + basic datatypes     |
| Control flow | what is it + what is it used for   |
| Functions    | calling + writing functions        |
| Playgrounds  | how to play around with Swift code |

You can download a Swift Playgrounds version of this workshop [here](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%201/workshop%201.playground.zip).

---

# 1.1 A Swift Start

This will be a quick introduction into how to write Swift code.

- **how to create and modify variables**
- **how to write control flow**
- **how to create functions**

## Topics

1. [Datatypes][1]
2. [Declarations][2]
3. [Integers][3]
4. [Doubles][4]
5. [Booleans][5]
6. [Strings][6]
7. [Arrays][7]
8. [Sets][8]
9. [Dictionaries][9]
10. [Control Flow][10]
11. [Conditional Statements][11]
12. [Switch][12]
13. [Loops][13]
14. [Functions][14]

## Opening Playgrounds

First let's open a **Playground** in Xcode. Playgrounds is a development environment for Swift created by Apple. It allows you to write code and see it in action immediately.

![initial][image-1]

You can open a **Playground** by opening Xcode and selecting the open **Get started with a playground** option in the **Welcome to Xcode** window (if it doesn't show up, press <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>1</kbd> to bring it up).

In the window that appears, select a **blank iOS template**, give your playground a name, and then press next.

If you want more information on how to do this, check out this online tutorial: [Get Started With Xcode Playgrounds][15].

You should see a window like this. Delete the text inside the playground, let's start with a clean slate.

![initial-playground][image-2]

Let's write your first line of Swift code.

``` swift
print("hello world")
```

Press <kbd>shift</kbd> + <kbd>enter</kbd> to run this line, or press the **Run** button in the line numbers or at the bottom left of the code editor.

![play][image-3]

You should see the result on the right side of the code editor. and at the bottom in the console panel.

_Congrats you have now written your first line of Swift code!_

## Datatypes

Now that we have our playground setup, let's talk about Swift.

Swift, like any other programming language uses datatypes and variables. Swift is a _type-safe_ language, which means that it helps you be clear about which types of values your code works with. This ensures that you don't pass the wrong types of values by mistake, helping you catch errors quicker in the development process.

A **datatype** is a particular type of data item, defined by:

- the values it can take
- the operations that can be performed by it

A **variable** is an instance of a datatype, often given a descriptive name.

Datatypes and variables are the tools used by programmers to solve larger problems, and in order to know which tools is best for a given problem, you need to understand the strengths and weaknesses of each datatype.

In this workshop we will only cover a few of the basic datatypes in Swift such as:

- `Int` (integer)
- `Double` (decimal number)
- `Bool` (true / false)
- `String` (text)
- `Array` (ordered list)
- `Dictionary` (list with key + value pairs)

For more informations read [The Basics][16], from the Swift Organization.

## Declarations

In order to create a datatype we must declare it. If we don't declare it and try to use it, Xcode will complain telling you **Use of unresolved identifier 'x'** (where x is the variable name).

_This — by the way — is called a compilation error._

In order to avoid this error, we have two ways of declaring a variable:

1. `let` (constant)
2. `var` (variable)

### Using `let`

You can define a constant variable such as pi by typing the following:

``` swift
let pi = 3.1415926
```

Let's use pi to compute the  Earth's orbital path around the sun (approx.). The average distance between the Earth and the Sun is about 149.6 million km according to Google, so let's use that.

``` swift
let distance = 149_600_000.0    // 149.6 million km
let circumference = 2 * pi * distance

print("Earth travels about \(circumference) km every year")
```

You might have noticed two interesting things about Swift in that example:

- You can add `_` to numbers as separators to make it more readable.
  - _e.g. `100_000_000` as opposed to `100000000`_
- You can print variable values using **String Interpolation**.
  - e.g. `"x has the value: \(x)"`

Additionally we added the `.0` to the distance to make it easier to multiply it with pi when both the same datatype (`Double`). If one was a whole number and the other a decimal number, Xcode would have complained. We talk about this later.

### Using `var`

Using the `let` keyword allows us to create constant variables, but what if we want to change the distance so that instead of the Earth, we wanted to know Mercury's orbit?

Add these two lines below our code to calculate the Earth's orbit:

``` swift
distance = 57_910_000.0    // 57.91 million km
circumference = 2 * pi * distance

print("Mercury travels about \(circumference) km every year")
```

_Xcode doesn't like that, does it?_

See we told Xcode that we would never change the values of `distance` and `circumference` but here we are trying to change it. We lied to Xcode.

It's ok, Xcode will forgive us; Xcode even offers to fix our problem for us. If you notice on the right side of the lines where we are trying to change the values of `distance` and `circumference`, there is a message in red: **Cannot assign to value: 'distance' is a 'let' constant**.

If you click on this message, it will expand with a small message **Change 'let' to make it mutable** and a **Fix** button (Mutable means it can change; not a constant). If you press the **Fix** button Xcode will change the `let` declaration to a `var` declaration.

![fix][image-4]

Do this for both the `distance` and `circumference` variables and run your code.

You should see both of the orbital distances travelled by the Earth and Mercury printed to the console.

## Optionals

Optionals are used in Swift where a variable's value may be absent (`nil`).

**Either:**

- there is a value, and you have to unwrap the optional
- or, there is is no value at all

The `Int()` initializer returns an `Int?` instead of `Int` because it might fail to convert the `String` to a numeric value.

``` swift
var twentyThree = Int("23") // -> 23
var five = Int("five")      // -> nil
```

_An initializer is used to create an instance of a datatype (otherwise known as constructors in other languages)_

### nil

In Swift, you can set an optional value to nil, but you cannot do this with non-optional values. By default optional variables are set to nil

``` swift
twentyThree = nil
var optionalValue: Int? // -> nil
```

### Unwrapping Optionals

Unwrapping an optional means checking the value inside an optional variable. You can check if an optional has a value using an `if` statement (these are explained in [Conditional Statements][17]) to check if the value is `nil`.

You can then use the `!` operator to force unwrap the value contained in the optional. If you use the `!` you **must** be sure that the optional contains a non-nil value, otherwise your program will crash, and you will be unhappy.

``` swift
optionalValue = Int("20")

if optionalValue != nil {
    print("the optional has a value of \(optionalValue!)")
}
// the optional has a value of 20
```

### Optional Binding

Another way of checking if an optional has a non-nil value, is to use optional binding:

``` swift
if let value = optionalValue {
    print("the optional still has a value of \(value)")
}
// the optional still has a value of 20
```

Read more about optionals in [The Basics][18] in the Swift Book.

## Integers

Now that we know how to declare constants and variables, let's get back to datatypes.

In Swift we can represent integers using the `Int` datatype. Integers can be positive or negative, but they don't have any decimal values.

You can declare integers in a couple of different ways:

1. You can either let Xcode infer that the number is an integer — by the absence of decimals.
2. You can explicitly tell Xcode the datatype
	- either by writing `:Int` after the variable name.
	- or by assigning its value to `Int(someNumber)` and converting `someNumber` to an integer.

``` swift
let x = 1           // implicit
let y: Int = -2     // explicit
let z = Int(100.0)  // explicit
```

## Doubles

In Swift we can represent decimal numbers — properly known as floating-point numbers — using the `Double` datatype. Floating-point numbers are numbers that have fractional components, colloquially referred to as as decimal values.

``` swift
let p = 1.0          // implicit
let q: Double = -2   // explicit
let r = Double (99)  // explicit
```

You may have noticed that Xcode does not implicitly converts numbers from type `Int` into `Double`.

Try this code:

``` swift
let aDouble = 5.0     // this is a Double
let anInteger: Int = aDouble
// cannot implicitly convert Double to Int
```

_Or the opposite_

``` swift
let someInteger = 5   // this is an Int
let someDouble: Double = someInteger
// cannot implicitly convert Int to Double
```

Xcode in both cases will complain with something along the lines of: **Cannot convert value of type 'Double' to specified type 'Int'**.

How do we fix this? The simple solution is to cast the value to the desired datatype using either `Int()` or `Double()`

``` swift
let myDouble = 5.0
let myInteger: Int = Int(myDouble)  // explicit conversion
```

``` swift
let yourInteger = 5
let yourDouble: Double = Double(yourInteger)
```

## Boolean

In Swift we can represent boolean values using the `Bool` datatype. A boolean value can only `true` or `false`.

``` swift
let schoolIsFun = false
var codingIsFun = true    // only when I'm not debugging

let bool: Bool = true
let piGreaterThanFive = pi > 5

if piGreaterThanFive {
    print("Physics is broken!?")
}
// Physics is broken!?
```

You can negate (invert) a boolean value using the negation `!` operator.

``` swift
if !piGreaterThanFive {
    print("Physics is fine")
}
// Physics is fine
```

You can see above that Since a logical operation `(pi > 5)` results in a boolean value, you can set a `Bool` equal to its result as shown above.

## Strings

In Swift we can represent text using the `String` datatype. A `String` is a series of characters — _a string of characters_.

``` swift
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
```

Sometimes you want to include special characters such as quotations in your strings; this is called escaping, and you do this by using a backslash `\` before that character you want to escape. _You will have to do this for each  character you want to escape._

``` swift
let escape = "I shouted \"FREEDOM\" as I jumped out the window!"
```

### Empty Strings

You can create empty strings — to be filled in later by user input or online data — in two ways (source: [Initializing an Empty String][19]):

``` swift
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other
```

And to check if a string is empty you can use the `.isEmpty` method.

``` swift
if emptyString.isEmpty {
    print("Nothing to see here")
}
// Nothing to see here
```

### String Concatenation

You can add / concatenate strings together which allows you to build longer and more complex strings, such as a greeting.

``` swift
let firstName = "Elon"
let message = "Hello there " + firstName + "!"
print(message)
// prints "Hello there Elon!"
```

You can also append to the end of a string using either the `.append` method or with the `+=` operator.

``` swift
message.append(" Welcome")
message += "!"
print(message)
// prints "Hello there Elon! Welcome!"
```

### String Interpolation

Sometimes, instead of adding strings it makes more sense to insert a value into a string — this value can also be a string, but it could be an integer or another datatype.

``` swift
let newMessage = "Hello there \(firstName)!"
print(newMessage)
```

Read more about [Strings and Characters][20].

## Arrays

In Swift we can represent a collection of values using the `Array` datatype. An `Array` is an ordered list of values. These values must all be of the same type, otherwise Xcode will complain — or worse you'll get a runtime error.

``` swift
var intArray = [1, 2, 3]
var emptyArray = [Int]()  // this is shorthand for Array<Int>()

print("not empty: \(intArray)")
print("empty: \(emptyArray)")
/*
  not empty: [1, 2, 3]
  empty: []
*/
```

You can get the number of items in an array using the `.count` method.

``` swift
print("intArray has \(intArray.count) items")
```

### Appending

You can append elements to an array using either the `.append` method or with the `+=` operator, just as with `String`.

``` swift
intArray.append(4)
intArray += [5]
intArray += [6, 7]
print(intArray)
// [1, 2, 3, 4, 5, 6, 7]
```

### Subscript Operator

You can also access specific elements in an `Array` using the subscript `[]` operator.

``` swift
print("the first element in the array is \(intArray[0])")
print("the second element in the array is \(intArray[1])")
```

### Iterating

You can iterate across every element in an array using a `for-in` loop:

``` swift
for item in intArray {
    print(item)
}
/*
   1
   2
   3
   4
   5
   6
   7
*/
```

If you need the index, you can also use the `.enumerated` method as shown, since that method returns tuples of (index, value).

``` swift
for (index, value) in intArray.enumerated() {
    print("index \(index): \(value)")
}
/*
   index 0: 1
   index 1: 2
   index 2: 3
   index 3: 4
   index 4: 5
   index 5: 6
   index 6: 7
*/
```

Read more about [Collection Types][21] in the Swift Book.

## Sets

Another way of representing a collection of values in Swift is by using a `Set`. You can use a `Set` when the order of the elements doesn't matter, or when you want to make sure there are no duplicate items in the list.

``` swift
var intSet: Set<Int> = [1, 2, 3, 2]

intSet.update(with: 7)      // adding to the set

print("\n# printing all set elements [unsorted] \n")

for item in intSet {
    print("unsorted: \(item)")
}
/*
  # printing all set elements [unsorted]

   unsorted: 3
   unsorted: 1
   unsorted: 2
*/
```

If you want to go over the set elements in a specific order you can use the `.sorted` method.

``` swift
print("\n# printing all set elements [sorted] \n")
for item in intSet.sorted() {
    print("sorted: \(item)")
}
/*
  # printing all set elements [sorted]

   sorted: 1
   sorted: 2
   sorted: 3
*/
```

### Arrays vs. Sets

- Think of any **array** as a bookshelf where each item is next to each other (ordered).
  - _good for reading_
- A **set** is a bag of items where it doesn't matter where each item is.
  - _good for inserting_

Read more about [Collection Types][22].

## Dictionaries

In Swift we can use the `Dictionary` datatype to organize key-value pairs. It functions like a set, but each value has a key that can be used to retrieve the value.

``` swift
var students: [Int: String] = [:]   // [Key: Value]
// empty dictionary

students[101] = "Jeremy Smith"
students[102] = "Carlos Gutierrez"
students[103] = "Emma Martin"

print("\n# printing all students \n")

for student in students {
    print("\(student.key): \(student.value)")
}
/*
  # printing all students

   103: Emma Martin
   101: Jeremy Smith
   102: Carlos Gutierrez
*/
```

Notice that the items in a dictionary are also unordered like in a set. If you want to go over the items in a specific order, use the `.sorted` method like with `Set`.

``` swift
print("\n# printing all students [sorted] \n")

for (key, value) in students.sorted(by: <) {
    print("\(key): \(value)")
}
```

You can update dictionary values using the `.updateValue` method.

``` swift
if let oldValue = students.updateValue("Emma Rae Martin", forKey: 103) {
    print("The old value for student 103 was \(oldValue).")
    print("The new value for student 103 is \(students[103]!).")
}
```

Read more about [Collection Types][23].

## Control flow

Now that we've learned about different datatypes and how to create and use them, we now need to learn about another fundamental building block of programming: **Control Flow**.

Control flow allows us to create different actions and combinations of actions based on certain conditions.

You might have already seen some control flow in the examples we've used, but now we're going to go over them in-depth.

_"Swift provides a variety of control flow statements. These include while loops to perform a task multiple times; if, guard, and switch statements to execute different branches of code based on certain conditions; and statements such as break and continue to transfer the flow of execution to another point in your code"_ - [Swift Book][24]

### Topics

- Conditional Statements
- Switches
- Loops

### Conditional Statements

Let's say you want to create a simple program to send a welcome message to every student at the school. We already have our dictionary with student numbers matched to a student name, but let's add a few empty student numbers reserved for future students.

``` swift
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
/*
  # greetings [attempt]

  Hello, welcome to school, Jeremy Smith!
  Hello, welcome to school, Carlos Gutierrez!
  Hello, welcome to school, Emma Martin!
  Hello, welcome to school, !
  Hello, welcome to school, !
  Hello, welcome to school, !
 */
```

You'll notice that we now have a bunch of greetings with no name. How could we make it so that the greeting is only printed if that student number has a name?

**Control flow** \*cough cough\*

### If Statements

The simplest solution to our problem is to check if the string (value) associated with a key is empty, and if it isn't, then we print our greeting message.

We can do this with an `if` statement.

``` swift
print("\n# greetings [correct]\n")

for student in students.sorted(by: <) {
    if !student.value.isEmpty { // if the string is not empty
        print("Hello, welcome to school, \(student.value)!")
    }
}
/*
  # greetings [correct]

  Hello, welcome to school, Jeremy Smith!
  Hello, welcome to school, Carlos Gutierrez!
  Hello, welcome to school, Emma Martin!
 */
```

As you can see, an `if` loop allows us to create specific actions based on certain conditions or variables. In this example we used the `if` code block at it's most basic: just a simple check for a condition, and some code that is executed if that condition is true.

#### Optional Binding: `if let`

You can use the `let` in the condition of an `if` statement to find out if an optional contains a value, or if a conversion is valid (such as from `String` to `Int`). This is called optional binding.

``` swift
let randomInput = [ "123", "five" ]

let randomIndex = Int.random(in: 0...1)
var perhapsNumber = randomInput[randomIndex]

if let number = Int(perhapsNumber) {
    print("'\(perhapsNumber)' is a valid integer: \(number)")
}
else {
    print("'\(perhapsNumber)' is not a valid integer")
}
```

In this example the if the optional `Int?` returned by `Int()` is an integer value, that value is used to create a new constant `number`.

#### `else` / `else if`

We can spice up the `if` statement with `else` and `else if` for additional branches of execution.

```swift
let temperature = -32

if temperature >= 25 {
    print("it's quite hot, make sure to stay hydrated!")
} else if temperature <= -20 {
    print("it's quite cold, make sure to bundle up!")
} else {
    print("it's nice outside")
}
// it's quite cold, make sure to bundle up!
```

Using `else if` allows us to add a condition that is only checked if the preceding conditions don't match. Since temperature is less than -20, a message to bundle up was printed.

The final `else` statement is optional, and can be removed if no default case is needed.

```swift
let temperature = 15

if temperature >= 25 {
    print("it's quite hot, make sure to stay hydrated!")
} else if temperature <= -20 {
    print("it's quite cold, make sure to bundle up!")
}
// prints nothing
```

In this case, nothing is printed since the temperature is neither hot nor cold enough to trigger either the `if` or `else if` conditions.

### Logical Operators

To create more complex conditions we can use the `!` (negation), the `&&` (AND), `||` (OR) logical operators.

#### Negation operator (`!`)

The negation operator will invert the value of a boolean:

- true -\> false
- false -\> true

The value `!allowedEntry` can be read as 'not `allowedEntry`', as shown below.

``` swift
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// ACCESS DENIED
```

#### AND Operator (`&&`)

The logical AND operator is an expression that is true if **both** boolean values are true. If one is false then the overall expression is false.

In the following example, access is only granted if both `enteredDoorCode` and `passedRetinaScan` are both true.

``` swift
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// ACCESS DENIED
```

### OR Operator (`||`)

The logical OR operator is an expression that is true if just **one** boolean value is true. If one is true then the overall expression is true.

In the example below, if either `hasDoorKey` or `knowsOverridePassword` is **true** (or both are true), then the access would be granted.

Only if both `hasDoorKey` or `knowsOverridePassword` are **false**, then access would be granted.

``` swift
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Welcome!
```

You can find these examples and more information in [Basic Operators][25] in the Swift Book.

### Switch

What if you have a bunch of `if` cases for the same variable?

_Like this..._

``` swift
let value = "M"

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
```

The `switch` code block below is identical to the `if` code block above, but it is both quicker to write and easier to read.

``` swift
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
// M is the same as 10^6
```

You can add multiple conditions to one case, for example:

``` swift
let value = "m"

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
```

More infomation about [Switch Statements][26].

### Loops

In addition to `if` and `switch` statements, we can loop over code using `while`, `for-in` statements.

#### `for-in`

`for-in` statements are quite useful for iterating over element in a collection, or perform the same task, as we've done several times in this workshop.

``` swift
var students = [
    101: "Jeremy Smith",
    102: "Carlos Gutierrez",
    103: "Emma Martin",
]

print("\n# regular for-in loop\n")

for student in students {
    print("\(student.key): \(student.value)")
}
/*
  # regular for-in loop

  103: Emma Martin
  101: Jeremy Smith
  102: Carlos Gutierrez
 */
```

A different version of this `for-in` statement uses a (key, value) tuple:

``` swift
print("\n# for-in loop using tuple\n")

for (number, name) in students {
    print("\(number): \(name)")
}
/*
  # for-in loop using tuple

  103: Emma Martin
  101: Jeremy Smith
  102: Carlos Gutierrez
 */
```

We can also do `for-in` with numeric ranges, shown with the three-times table:

``` swift
for i in 1...5 {
    print("3 x \(i) = \(3 * i)")
}

// this is the same as above
// since ..< excludes the final value
for i in 1..<6 {
    print("3 x \(i) = \(3 * i)")
}
```

#### `while`

A `while` loop is similar to a `for-in` loop, but it will keep executing until a certain condition is not met.

``` swift
var number = 0

while number != 5 {
    print("\(number) is not five")
    number = Int.random(in: 0...10)
}

print("\(number) is five!")
```

Here each time the code is run, it will loop a different amount of times, since only when number is 5 will the condition `number != 5` be `false`, thus exiting out of the loop.

### `continue` / `break`

Using `while` and `for-in` loops to repeat code execution is super common, especially when you want to perform an action on multiple collection items.

- But what happens when you want to ignore some elements?
- Or if you want to stop looping once you've found a specific item?

In these cases we use either the `continue` or `break` keywords.

#### `continue`

You can use the `continue` keyword when you want to finish a loop iteration, but you don't want to stop looping altogether. The code will continue executing at the start of the next loop.

``` swift
let children = [
    "Sam": "bad",
    "Peter": "good",
    "Joanna": "good",
    "Ben": "bad"
]

print("\n# all the good children...\n")

for child in children {
    if child.value == "bad" {
        continue // ignore naughty children
    }
    print("\(child.key) is a good child")
}
/*
  # all the good children...

   Peter is a good child
   Joanna is a good child
*/
```

In this example, if a child was bad, we ignored them but we still kept looping through all the children.

#### `break`

What if you want to stop looping entirely?

You can use the `break` keyword to exit the `while` or `for-in` statement altogether.

``` swift
let lotteryTickets: Set<String> = [
    "10209",
    "87123",
    "12334",
    "98232",
    "12353",
]

let winningTicket = "12334"

print("\n# playing the lottery...\n")

for numbers in lotteryTickets {
    if numbers == winningTicket {
        print("You won the lottery!")
        break
    }
}
/*
  # playing the lottery...

  checking 87123...
  checking 10209...
  checking 98232...
  checking 12353...
  checking 12334...
  You won the lottery!
*/
```

In this example, as soon as we found the winning lottery, we stop looking and we stop looping altogether.

## Functions

Functions (methods) allow programmers to encapsulate code and call on it when it's needed instead of copying and pasting it several times across an application. This means that if you find a bug or you need to update the code, you only do so once, and not in every place you use the code.

**`DRY:`** `Don't Repeat Yourself`

- _**Functions are self-contained chunks of code that perform a specific task.** You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed._ — [Swift Book][27]:

### Defining and Calling Functions

A function is defined by using these three concepts:

- **Parameters:** typed input variables (optional)
- **Return Type:** type of value passed back as output (optional)
- **Function Name:** name that describes the task the function performs

Function definitions must be unique to a function, otherwise you will get an error that you are redefining an existing function. As long as the parameters or return type is different, then you can have multiple functions with the same name.

When we use a function, we _"call"_ the function by using the **function name** and passing any input values — _arguments_ — that match the function's parameters.

### Function Defintion

Below we have an example function that greets a person when given their name. It contains one **input parameter** called `person` defined as a `String`. The **output return value** is also of type `String` which will contain the greeting message.

``` swift
/**
 Simple greeting function.
 - parameters: person: the person's name to be greeted
 */
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
/*
  Hello, Anna!
  Hello, Brian!
 */
```

You might have noticed the markup used before the function defintion. This is called documentation and it is very important when you are working with other developers so that they know what your function is, what it does, and exactly what each parameter is.

_You can see your function documentation by clicking on the function name and holding the <kbd>option</kbd> key._

### Calling Functions

We call our `greet()` function by writing the function name and passing `"Anna"` as the `person` parameter. We can store the return value in variable like message so we can then print it later.

Alternatively, since `print()` itself is a a function that takes an unnamed `String` parameter, we can pass the `greet()` function as its argument; this allows us to print the greeting directly without storing it's result in an extra variable.

``` swift
let message = greet(person: "Anna")
print(message)

print(greet(person: "Brian"))
```

This function can be simplified, by combining the message creation and the return statement into one line.

``` swift
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

print(greetAgain(person: "Anna"))
// Hello again, Anna!
```

### Function Parameters and Return Values

You have a lot of freedom in how you define parameters and return values when using Swift. You can create very simple utility functions or something more complex to suit your needs.

### Functions Without Parameters

You can define functions that have no input parameters, such as this example:

``` swift
func sayHelloWorld() -> String {
    return "hello world"
}

print(sayHelloWorld())
// hello world
```

### Functions With Multiple Parameters

You can also define functions that have many parameters for more complex logic. The first parameter can be left unnamed — by using the underscore '`_`' character — but all parameters after that must be named.

Here we are defining a second function named `greet()` but here it has two parameters which makes it unique from the earlier `greet()` function.

``` swift
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } // implicit else
    return greet(person: person)
}

print(greet(person: "Anna", alreadyGreeted: true))
print(greet(person: "Jenny", alreadyGreeted: false))
/*
  Hello again, Brian!
  Hello, Jenny!
 */
```

### Functions Without Return Values

If you don't need to reuse the result of your function, it might make more sense to not have a return value for your function. This is common with functions that print to the console, or otherwise something to the user.

The return type and the `->` is then optional if the return type is `Void`.

``` swift
func greeting(person: String) -> Void {
    print("Greetings, \(person)!")
}

greeting(person: "Dave")
// Greetings, Dave!
```

### Function Argument Labels and Parameter Names

Parameters each have a label and a name:

- the **label** is what you see when you are calling the function
- the **name** is the variable name inside the function

By default, the parameter name becomes the label, but you can override this by defining your own label.

In this example the `person` parameter label and name are the same, but the `hometown` parameter is labelled `from`.

``` swift
/**
 Slightly more complex greeting function.
 - parameters:
     - person: the person's name to be greeted
 */
func greet(person: String, from hometown: String) {
    print("Hello \(person)! Glad you could visit from \(hometown).")
}

greet(person: "Tim", from: "Cupertino")
// Hello Tim! Glad you could visit from Cupertino.
```

If you want to learn more about functions in Swift, read the  [Functions][28] page in the Swift Book — _many of these examples come directly from there._

# 1.2 Playing around with Swift

Now that we have a firm basic understanding of how to write Swift code, let's use it to build something cool.

What's a cooler thing to make than a revolutionary app with over a million downloads within it's first week?

Your first tic tac toe app in playgrounds, that's what!

## Tic Tac Toe

I've already built a skeleton for this tic tac toe app to help you get started, including the labels and buttons. We're just going to add a few functions to finish up the game.

1. **Add a function that is triggered when you play a move.**
2. **Add a function that checks if a winning move has been played.**
3. **Add a function that updates the game board**

_The function definitions are shown below. We will implement later._

``` swift
/**
 Action triggered when any game board button is pressed
 - parameter sender: A reference to the button that was pressed
 */
func buttonPressed(sender: UIButton!) {}
```

``` swift
/**
 Checks game board and checks if any winning moves were made.
 - returns: True if a winning move was found in `board`
 */
func winner() -> Bool { return false }
```

``` swift
/**
 Updates `board` with the last move
 - parameter button: button ID for button pressed (1...9)
 */
func updateBoard(button: Int) {}
```

## Tic Tac Toe Playground

A simple tic tac toe game implemented in Swift Playgrounds.

### Import Statements

This bit of code imports tools so we can create our tic tac toe game in Swift Playgrounds.
- [UIKit][29] is the UI framework for iOS applications.
- [Playground Support][30] allows us to display and interact with live views in playgrounds.

``` swift
import UIKit
import PlaygroundSupport
```

### Global Constants

These are values that are _globally_ accessible, that means you can use them anywhere in your program. Usually you want to avoid using these since it can create unforeseen problems in a large project and can be quite difficult to debug.

We are using them here since we're just starting out and our program is small.

``` swift
let background = UIColor(red:0.04, green:0.04, blue:0.03, alpha:1.0)
let lavaRed    = UIColor(red:0.78, green:0.06, blue:0.18, alpha:1.0)
let mustard    = UIColor(red:1.00, green:0.82, blue:0.32, alpha:1.0)
let navajo     = UIColor(red:1.00, green:0.90, blue:0.63, alpha:1.0)
```

### View Controller

View controllers are a super important concept in iOS development as every single app has at least one view controller, and often more than one. They manage your user interface and it's interactions with the underlying data.

Each view controller manages a top level view which contains smaller subviews / UI element, but it does not necessary manage the subviews — _here in our simple example, it does_.

Read more about view controllers in Apple's [programming guide][31]

``` swift
class MyViewController : UIViewController {
```

### Class Properties

Class properties are values that are associated with a class. Just like a car has four wheels (each wheel is a property of a car), our tic tac toe game has 9 buttons (one for each position on the board). Our game view also has two text labels: a title and a subtitle. The title will just simply say the name of the game, and the subtitle will give current player's turn or the winner.

``` swift
/*
     Board values
     - initial state value: 0
     - player x state value: 1
     - player o state value: -1
     */
    var board = [0,0,0, 0,0,0, 0,0,0]
    var turnCount = 0
    var turnX = true

    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var button5: UIButton!
    var button6: UIButton!
    var button7: UIButton!
    var button8: UIButton!
    var button9: UIButton!

    var label: UILabel!
    var subtitle: UILabel!
```

You may have noticed that the button variables are all of type `UIButton!` which should look similar to optionals where we used `?` after a datatype like `UIButton?`.

Using the `!` operator instead of `?` still makes the variable an optional, but instead it means we don't have to explicitly unwrap it every time we use it; this is called an **implicitly unwrapped optional**.

We are using it here because we want to have class-wide access to the buttons, but we only want to create them once the view is loaded. For more info, here is an article explaining implicitly unwrapped optionals: [What are implicitly unwrapped optionals?][32].

### Loading the View

This function is what actually loads all of our labels and buttons into the playground live view. Here we create our `UIView` and we change its background colour. We setup the labels and buttons, adding them to the view, and then we give the view to the view controller.

`setupLabel(with: view)` and `setupButtons(with: view)` were created to make this a bit easier; they put all the buttons and labels in the right place and setting them to their initial values, they are defined below in this class.

``` swift
    override func loadView() {
        let view = UIView()     // default view size: (375.0, 668.0)
        view.backgroundColor = background

        setupLabels(with: view)
        setupButtons(with: view)

        self.view = view
    }

    /**
     Creates and adds title and subtitle labels to the view passed.
     - parameter view: View created in `loadView()`
     */
    @objc func setupLabels(with view: UIView) {
        // label (title) //
        label = UILabel()
        label.frame = CGRect(x: 187.5-60, y: 100, width: 200, height: 60)
        label.text = "Tic Tac Toe"
        label.font = UIFont(name: "Helvetica", size: 24)
        label.textColor = .white

        // subtitle //
        subtitle = UILabel()
        subtitle.frame = CGRect(x: 187.5-30, y: 140, width: 200, height: 60)
        subtitle.text = "X's turn"
        subtitle.font = UIFont(name: "Helvetica", size: 18)
        subtitle.textColor = .gray

        view.addSubview(label)
        view.addSubview(subtitle)
    }

    /**
     Creates and adds all 9 buttons for tic tac toe game board.
     - parameter view: View created in `loadView()`
     */
    @objc func setupButtons(with view: UIView) {
        button1 = UIButton()
        button2 = UIButton()
        button3 = UIButton()
        button4 = UIButton()
        button5 = UIButton()
        button6 = UIButton()
        button7 = UIButton()
        button8 = UIButton()
        button9 = UIButton()

        button1.tag = 1
        button2.tag = 2
        button3.tag = 3
        button4.tag = 4
        button5.tag = 5
        button6.tag = 6
        button7.tag = 7
        button8.tag = 8
        button9.tag = 9

        button1.setTitle("#", for: .normal)
        button2.setTitle("#", for: .normal)
        button3.setTitle("#", for: .normal)
        button4.setTitle("#", for: .normal)
        button5.setTitle("#", for: .normal)
        button6.setTitle("#", for: .normal)
        button7.setTitle("#", for: .normal)
        button8.setTitle("#", for: .normal)
        button9.setTitle("#", for: .normal)

        button1.setTitleColor(mustard, for: .normal)
        button2.setTitleColor(mustard, for: .normal)
        button3.setTitleColor(mustard, for: .normal)
        button4.setTitleColor(mustard, for: .normal)
        button5.setTitleColor(mustard, for: .normal)
        button6.setTitleColor(mustard, for: .normal)
        button7.setTitleColor(mustard, for: .normal)
        button8.setTitleColor(mustard, for: .normal)
        button9.setTitleColor(mustard, for: .normal)

        button1.setTitleColor(navajo, for: .highlighted)
        button2.setTitleColor(navajo, for: .highlighted)
        button3.setTitleColor(navajo, for: .highlighted)
        button4.setTitleColor(navajo, for: .highlighted)
        button5.setTitleColor(navajo, for: .highlighted)
        button6.setTitleColor(navajo, for: .highlighted)
        button7.setTitleColor(navajo, for: .highlighted)
        button8.setTitleColor(navajo, for: .highlighted)
        button9.setTitleColor(navajo, for: .highlighted)

        button1.frame = CGRect(x: 62.5,  y: 300, width: 40, height: 40)
        button2.frame = CGRect(x: 167.5, y: 300, width: 40, height: 40)
        button3.frame = CGRect(x: 272.5, y: 300, width: 40, height: 40)
        button4.frame = CGRect(x: 62.5,  y: 405, width: 40, height: 40)
        button5.frame = CGRect(x: 167.5, y: 405, width: 40, height: 40)
        button6.frame = CGRect(x: 272.5, y: 405, width: 40, height: 40)
        button7.frame = CGRect(x: 62.5,  y: 510, width: 40, height: 40)
        button8.frame = CGRect(x: 167.5, y: 510, width: 40, height: 40)
        button9.frame = CGRect(x: 272.5, y: 510, width: 40, height: 40)

        button1.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button2.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button3.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button4.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button5.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button6.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button7.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button8.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button9.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )

        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button6)
        view.addSubview(button7)
        view.addSubview(button8)
        view.addSubview(button9)
    }
```

### Button Pressed

When a button is pressed we want to do a few different things:

1. We want to update that button with that player's move
	- but only if that button hasn't already been pressed
2. We want to check if that move was a winning move
	- and if so we want to stop the game
3. We want to show that it's the next player's turn

``` swift
/**
     Action triggered when any game board button is pressed
     - parameter sender: A reference to the button that was pressed
     */
    @objc func buttonPressed(sender: UIButton!) {
        // quit if game is over or button has already been pressed
        if winner() || board[sender.tag-1] != 0 {
            return
        }

        let symbol = turnX ? "X" : "O"
        let nextSymbol = !turnX ? "X" : "O"

        // update button with player symbol
        sender.setTitle(symbol, for: .normal)
        turnX = !turnX
        turnCount += 1

        // update board struct with new move
        updateBoard(button: sender.tag)

        // check for winner
        if winner() {
            subtitle.text = "\(symbol) wins!"
            return
        }

        // check for draw since no winner was found
        if turnCount == 9 {
            subtitle.text = "Draw!"
            return
        }

        // update subtitle to say who's turn it is
        subtitle.text = "\(nextSymbol)'s turn"
    }
```

### Winning Combinations

There are 8 possible winning combinations for any particular player. We can check for these if there are three game positions with the same value in a line. We can describe these winning combinations by comparing the values as shown below. (rows: a, b, c | col: 1, 2, 3)

The player could get all three in a row:

1. a1 == a2 == a3
2. b1 == b2 == b3
3. c1 == c2 == c3

The player could get all three in a column:

4. a1 == b1 == c1
5. a2 == b2 == c2
6. a3 == b3 == c3

Or the player could get one of the diagonals:

7. a1 == b2 == c3
8. a3 == b2 == c1

## Winner

Let's make this function check for each of these 8 cases, and if we find a winning combination we return true, but false if we don't find any.

Once we get that working, let's make it change the colour of the winning positions red as well so we can show the players exactly what the winning moves were.

_hint: conditional statements_

``` swift
    /**
     Checks game board and checks if any winning moves were made.
     - returns: True if a winning move was found in `board`
     */
    @objc func winner() -> Bool {
        if board[0] == board[1]
            && board[0] == board[2]
            && board[0] != 0 {
            // row 1 //
            button1.setTitleColor(lavaRed, for: .normal)
            button2.setTitleColor(lavaRed, for: .normal)
            button3.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[3] == board[4]
            && board[3] == board[5]
            && board[3] != 0 {
            // row 2 //
            button4.setTitleColor(lavaRed, for: .normal)
            button5.setTitleColor(lavaRed, for: .normal)
            button6.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[6] == board[7]
            && board[6] == board[8]
            && board[6] != 0 {
            // row 3 //
            button7.setTitleColor(lavaRed, for: .normal)
            button8.setTitleColor(lavaRed, for: .normal)
            button9.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[0] == board[3]
            && board[0] == board[6]
            && board[0] != 0 {
            // col 1 //
            button1.setTitleColor(lavaRed, for: .normal)
            button4.setTitleColor(lavaRed, for: .normal)
            button7.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[1] == board[4]
            && board[1] == board[7]
            && board[1] != 0 {
            // col 2 //
            button2.setTitleColor(lavaRed, for: .normal)
            button5.setTitleColor(lavaRed, for: .normal)
            button8.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[2] == board[5]
            && board[2] == board[8]
            && board[2] != 0 {
            // col 1 //
            button3.setTitleColor(lavaRed, for: .normal)
            button6.setTitleColor(lavaRed, for: .normal)
            button9.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[0] == board[4]
            && board[0] == board[8]
            && board[0] != 0 {
            // diagonal 1 //
            button1.setTitleColor(lavaRed, for: .normal)
            button5.setTitleColor(lavaRed, for: .normal)
            button9.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[2] == board[4]
            && board[2] == board[6]
            && board[2] != 0 {
            // diagonal 2 //
            button3.setTitleColor(lavaRed, for: .normal)
            button5.setTitleColor(lavaRed, for: .normal)
            button7.setTitleColor(lavaRed, for: .normal)
            return true
        }
        return false
    }
```

### Updating Board

We want to update our integer array which stores the states of each button so we don't have to go through each button every time we check for a winner. How can we update the `board` values using only the button ID?

_hint: ternary operator_

``` swift
    /**
     Updates `board` with the last move
     - parameter button: button ID for button pressed (1...9)
     */
    @objc func updateBoard(button: Int) {
        board[button-1] = turnX ? 1 : -1
    }
}
```

This line loads and shows the view in playgrounds.

``` swift
PlaygroundPage.current.liveView = MyViewController()
```

# Additional Topics

These are some useful topics that I would suggest reading into, and learning how to use them.

- [Basic Operators][33]
- [Enumerations][34]
- [Structures and Classes][35]
- [Swift Resources][36]
- [Google][37]
- [Stack Overflow][38]

# References

This are some of the resources I used to make this workshop, all of them are worth reading / watching.

- [Get Started With Xcode Playgrounds][39]
- [Swift Documentation][40]
- [Swift Language Guide][41]
- [What are implicitly unwrapped optionals?][42]
- [How to make something with Swift Playgrounds][43]
- [Awesome Swift Playgrounds][44]
- [WWDC 2018: Getting the Most out of Playgrounds in Xcode][45]
- [Markup Documentation][46]

[1]:	#Datatypes
[2]:	#Declarations
[3]:	#Integers
[4]:	#Doubles
[5]:	#Booleans
[6]:	#Strings
[7]:	#Arrays
[8]:	#Sets
[9]:	#Dictionaries
[10]:	#Control%20Flow
[11]:	#Conditional%20Statements
[12]:	#Switch
[13]:	#Loops
[14]:	#Functions
[15]:	https://learnappmaking.com/xcode-playground-get-started-with-swift/
[16]:	https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
[17]:	#Conditional%20Statements
[18]:	https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
[19]:	https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
[20]:	https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
[21]:	https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#
[22]:	https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#
[23]:	https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#
[24]:	https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html
[25]:	https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html
[26]:	https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html
[27]:	https://docs.swift.org/swift-book/LanguageGuide/Functions.html
[28]:	https://docs.swift.org/swift-book/LanguageGuide/Functions.html
[29]:	https://developer.apple.com/documentation/uikit
[30]:	https://developer.apple.com/documentation/playgroundsupport
[31]:	https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/
[32]:	https://www.hackingwithswift.com/example-code/language/what-are-implicitly-unwrapped-optionals
[33]:	https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html
[34]:	https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html
[35]:	https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html
[36]:	https://developer.apple.com/swift/resources/
[37]:	https://google.ca
[38]:	http://stackoverflow.com/
[39]:	https://learnappmaking.com/xcode-playground-get-started-with-swift/
[40]:	https://developer.apple.com/reference/swift
[41]:	https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
[42]:	https://www.hackingwithswift.com/example-code/language/what-are-implicitly-unwrapped-optionals
[43]:	https://www.freecodecamp.org/news/how-to-make-something-with-swift-playgrounds-33e560b84184/
[44]:	https://github.com/uraimo/Awesome-Swift-Playgrounds
[45]:	https://developer.apple.com/videos/play/wwdc2018/402/
[46]:	https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref/AddingMarkup.html#//apple_ref/doc/uid/TP40016497-CH100-SW1

[image-1]:	img/initial.png
[image-2]:	img/initial-playground.png
[image-3]:	img/play.png
[image-4]:	img/fix.png
