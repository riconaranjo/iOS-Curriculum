# 1. Getting Started with Swift

This workshop is about learning how to code in Swift, using Xcode Playgrounds.

| Topics       | Details            |
| ------------ | ------------------ |
| Datatypes   | declarations, `Int`, `Double`, `Bool`, `String`, `Array`, `Set`, `Dictionary` |
| Control flow | `if`, `for-in`, Scoping |
| Functions    | calling + writing functions, nested functions |
| Optionals    | what are they?     |
| Playgrounds  | how to play around with Swift code |

# 1.1 A Swift Start

This will be a quick introduction into how to write Swift code.
- **how to create and modify variables**
  - _and how to print them_
- **how to write control flow**
- **what are Optionals?**
  - _and why should I use them?_

## Opening Playgrounds

First let's open a **Playground** in Xcode. Playgrounds is a development environment for Swift created by Apple. It allows you to write code and see it in action immediately.

You can open a **Playground** by opening Xcode and selecting the open _Get started with a playground_ option in the **Welcome to Xcode** window (if it doesn't show up, press <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>1</kbd> to bring it up).

In the window that appears, select a **blank iOS template**, give your playground a name, and then press next.

If you want more information on how to do this, check out this online tutorial: [Get Started With Xcode Playgrounds](https://learnappmaking.com/xcode-playground-get-started-with-swift/).

You should see a window like this.

`// todo: add initial playgrounds image`

Let's write your first line of Swift code.

``` swift
print("hello world")
```

Press <kbd>shift</kbd> + <kbd>enter</kbd> to run this line, or press the **Run** button in the linenumbers or at the bottom left of the code editor.

`// todo: add run playground buttons image`

You should see the result on the right side of the code editor. and at the bottom in the console panel.

_Congrats you have now written your first line of Swift code!_

## Datatypes

Now that we have our playground setup, let's talk about Swift.

Swift like any other programming languages uses datatypes and variables. A **datatype** is a particular type of data item, defined by:

- the values it can take
- the operations that can be performed by it

A **variable** is an instance of a datatype.

Datatypes and variables are the tools used by programmers to solve larger problems, and in order to know which tools is best for a given problem, you need to understand the strengths and weaknesses of each datatype.

In this workshop we will only cover a few of the basic datatypes in Swift such as:

- `Int` (integer)
- `Double` (decimal number)
- `Boolean` (true / false)
- `String` (text)
- `Array` (ordered list)
- `Dictionary` (list with key + value pairs)

For more informations read [The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html), from the Swift Organization.

### Declarations

In order to create a datatype we must declare it. If we don't declare it and try to use it, Xcode will complain telling you **Use of unresolved identifier 'x'** (where x is the variable name).

_This — by the way — is called a compile error._

In order to avoid this error, we have two ways of declaring a variable:

1. `let` (constant)
2. `var` (variable)

#### `let`

You can define a constant variable such as pi by typing the following:

``` swift
let pi = 3.1415926
```

Let's use pi to compute the  Earth's orbital path around the sun (approx.). The average distance between the Earth and the Sun is about 149.6 million km according to Google, so let's use that.

``` swift
let distance = 149_600_000.0    // 149.6 million km
let circumference = 2 * pi * distance

print("the Earth travels about \(circumference) km every year")
```

You might have noticed two interesting things about Swift in that example:

- You can add `_` to numbers as separators to make it more readable.
  - _e.g. `100_000_000` as opposed to `100000000`_
- You can print variable values using **String Interpolation**.
  - e.g. `"x has the value: \(x)"`

Additionally we added the `.0` to the distance to make it easier to multiply it with pi when both the same datatype (`Double`). If one was a whole number and the other a decimal number, Xcode would have complained. We talk about this later.

#### `var`

Using the `let` keyword allows us to create constant variables, but what if we want to change the distance so that instead of the Earth, we wanted to know Mercury's orbit?

Add these two lines below our code to calculate the Earth's orbit:

``` swift
distance = 57_910_000.0    // 57.91 million km
circumference = 2 * pi * distance

print("Mercury travels about \(circumference) km every year")
```

Xcode doesn't like that, does it?

See we told Xcode that we would never change the values of `distance` and `circumference` but here we are trying to change it. We lied to Xcode.

It's ok, Xcode will forgive us; Xcode even offers to fix our problem for us. If you notice on the right side of the lines where we are trying to change the values of `distance` and `circumference`, there is a message in red: **Cannot assign to value: 'distance' is a 'let' constant**.

If you click on this message, it will expand with a small message **Change 'let' to make it mutable** and a **Fix** button (Mutable means it can change; not a constant). If you press the **Fix** button Xcode will change the `let` declaration to a `var` declaration.

`// todo: add image for fix error`

Do this for both the `distance` and `circumference` variables and run your code.

You should see both of the orbital distances travelled by the Earth and Mercury printed to the console.

### `Int`

Now that we know how to declare constants and variables, let's get back to datatypes.

In Swift we can represent integers using the `Int` datatype. Integers can be positive or negative, but they don't have any decimal values.

You can declare integers in a couple of different ways:

1. You can either let Xcode infer that the number is an integer — by the absence of decimals.
2. You can explicitly tell Xcode the datatype
    - either by writing `:Int` after the variable name.
    - or by assigning its value to `Int(someNumber)` and converting `someNumber` to an integer.

``` swift
let x = 1           // implicit
let y: Int = -2      // explicit
let z = Int(100.0)  // explicit
```

### `Double`

In Swift we can represent decimal numbers — properly known as floating-point numbers — using the `Double` datatype. Floating-point numbers are numbers that have fractional components, colloquially referred to as as decimal values.

``` swift
let p = 1.0          // implicit
let q: Double = -2    // explicit
let r = Double (99)  // explicit
```

You may have noticed that Xcode does not implicitly converts numbers from type `Int` into `Double`.

Try this code:

``` swift
let d1 = 5.0     // this is a Double
let i1: Int = d1   // cannot implicitly covert Double to Int
```

Or the opposite

``` swift
let i2 = 5         // this is an Int
let d2: Double = i2  // cannot implicitly covert Int to Double
```

Xcode in both cases will complain with something along the lines of: **Cannot convert value of type 'Double' to specified type 'Int'**.

How do we fix this? The simple solution is to cast the value to the desired datatype using either `Int()` or `Double()`

``` swift
let d1 = 5.0     // this is a Double
let i1: Int = Int(d1)  // explicit conversion
```

``` swift
let i2 = 5         // this is an Int
let d2: Double = Double(i2)
```

### `Bool`

In Swift we can represent boolean values using the `Bool` datatype. A boolean value can only `true` or `false`.

``` swift
let schoolIsFun = false
var codingIsFun = true    // only when I'm not debugging

let bool: Bool = true
let piGreaterThanFive = pi > 5

if piGreaterThanFive {
    print("Physics is broken!?")
}
```

You can negate (invert) a boolean value using the negation `!` operator.

``` swift
if !piGreaterThanFive {
    print("Physics is fine")
}
```

You can see above that Since a logical operation results in a boolean value, you can set a `Bool` equal to its result as shown above.

### `String`

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

#### Empty Strings

You can create empty strings — to be filled in later by user input or online data — in two ways (source: [Initializing an Empty String](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html)):

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
// prints "Nothing to see here"
```

#### String Concatenation

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

#### String Interpolation

Sometimes, instead of adding strings it makes more sense to insert a value into a string — this value can also be a string, but it could be an integer or another datatype.

``` swift

let newMessage = "Hello there \(firstName)!"
print(newMessage)
```

Read more about [Strings and Characters](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html).

### `Array`

In Swift we can represent a collection of values using the `Array` datatype. An `Array` is an ordered lists of values. These values must all be of the same type, otherwise Xcode will complain — or worse you'll get a runtime error.

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

#### Appending

You can append elements to an array using either the `.append` method or with the `+=` operator, just as with `String`.

``` swift
intArray.append(4)
intArray += [5]
intArray += [6, 7]
print(intArray)
// [1, 2, 3, 4, 5, 6, 7]
```

#### Subscript Operator

You can also access specific elements in an `Array` using the subscript `[]` operator.

``` swift
print("the first element in the array is \(intArray[0])")
print("the second element in the array is \(intArray[1])")
```

#### Iterating

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

Read more about [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#).

### Set

Another way of representing a collection of values in Swift is by using a `Set`. You can use a `Set` when the order of the elements doesn't matter, or when you want to make sure there are no duplicate items in the list.

``` swift
var intSet: Set<Int> = [1, 2, 3, 2]

for item in intSet {
    print("unsorted: \(item)")
}
/*
   unsorted: 3
   unsorted: 1
   unsorted: 2
*/
```

If you want to go over the set elements in a specific order you can use the `.sorted` method.

``` swift
for item in intSet.sorted() {
    print("sorted: \(item)")
}
/*
   sorted: 1
   sorted: 2
   sorted: 3
*/
```

Read more about [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#).

### `Dictionary`

In Swift we can use the `Dictionary` datatype to organize key-value pairs. It functions like a set, but each value has a key that can be used to retrieve the value.

``` swift
var students: [Int: String] = [:]   // [Key: Value]
// empty dictionary

students[101] = "Jeremy Smith"
students[102] = "Carlos Gutierrez"
students[103] = "Emma Martin"

for student in students {
    print("\(student.key): \(student.value)")
}
/*
   103: Emma Martin
   101: Jeremy Smith
   102: Carlos Gutierrez
*/
```

Notice that the items in a dictionary are also unordered like in a set. If you want to go over the items in a specific order, use the `.sorted` method.

You can update dictionary values using the `.updateValue` method.

``` swift
if let oldValue = airports.updateValue("Emma Rae Martin", forKey: 103) {
    print("The old value for student 103 was \(oldValue).")
}
```

Read more about [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#).

## Control flow

Now that we've learned about different datatypes and how to create and use them, we now need to learn about another fundamental building block of programming: **Control Flow**.

Control flow allows us to create different actions and combinations of actions based on certain conditions.

You might have already seen some control flow in the examples we've used, but now we're going to go over them in-depth.

_"Swift provides a variety of control flow statements. These include while loops to perform a task multiple times; if, guard, and switch statements to execute different branches of code based on certain conditions; and statements such as break and continue to transfer the flow of execution to another point in your code"_ - [Swift Book](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)

### Example

Let's say you want to create a simple program to send a welcome message to every student at the school. We already have our dictionary with student numbers matched to a student name, but let's add a few empty student numbers reserved for future students.

``` swift
students[104] = ""
students[105] = ""
students[106] = ""

print("\n# sorted dictionary\n")

for student in students.sorted(by: <) {
    print("\(student.key): \(student.value)")
}

print("\n# greetings\n")

for student in students.sorted(by: <) {
    print("Hello, welcome to school, \(student.value)!")
}
```

You'll notice that we now have a bunch of greetings with no name. How could we make it so that the greeting is only printed if that student number has a name?

**Control flow** \*cough cough\*

### `if`

The simplest solution to our problem is to check if the string (value) associated with a key is empty, and if it isn't, then we print our greeting message.

We can do this with an `if` statement.

``` swift
for student in students.sorted(by: <) {
    if !student.value.isEmpty { // if the string is not empty
        print("Hello, welcome to school, \(student.value)!")
    }
}
```

As you can see, an `if` loop allows us to create specific actions based on certain conditions or variables. In this example we used the `if` code block at it's most basic: just a simple check for a condition, and some code that is executed if that condition is true.

#### `if let`

You can use the `let` in the condition of an `if` statement to find out if an optional contains a value, or if a conversion is valid (such as from `String` to `Int`).

``` swift
var perhapsNumber = "1010"
if let number = Int(perhapsNumber) {
    print("'\(perhapsNumber)' is a valid integer: \(number)")
}
else {
    print("'\(perhapsNumber)' is not a valid integer")
}

```

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
```

In this case, nothing is printed since the temperature is neither hot nor cold enough to trigger either the `if` or `else if` conditions.

### `switch`

What if you have a bunch of `if` cases?

``` swift
let value = "M"

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

The `switch` code block above is identical to the `if` code block below, but it is both quicker to write and easier to read.

``` swift
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

#### `fallthrough`

One key difference between Swift and other languages such as C and Objective-C is that there is no default fallthrough between cases; instead they require and explicit `break` at the end of every case. Once the first matching case finishes executing, the `switch` statement finishes executing. This makes `switch` statements in Swift much more concise and predictable than in C, avoiding accidentally executing multiple cases.

If you want C-style fallthrough behaviour, you can use the `fallthrough` keyword.

``` swift
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
```

The `fallthrough` keyword causes the case condition of the next case not to be checked, it simply directly moves code execution to the statements inside the following case.

### Loops

In addition to `if` and `switch` statements, we can loop over code using `while`, `for-in` statements.

#### `for-in`

`for-in` statements are quite useful for iterating over element in a collection, or perform the same task, as we've done several times in this workshop.

``` swift
for student in students {
    print("\(student.key): \(student.value)")
}
```

A different version of this `for-in` statement uses a (key, value) tuple:

``` swift
for (number, name) in students {
    print("\(number): \(name)")
}
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
    print("\(number) is not five!")
    number = Int.random(in: 0...10)
}

print("\(number) is five!")
```

Here each time the code is run, it will loop a different amount of times, since only when number is 5 will the condition `number != 5` is broken, thus exiting out of the loop.

### `continue` / `break`

- continue
- break

## Functions

## Optionals

# 1.2 Playing around with Swift

Now that we have a basic understanding of how to write some Swift code, let's build a basic app in playgrounds.

## Playgrounds

## Additional Topics

These are some useful topics that I would suggest reading into, and learning how to use them.

- Enums / Structs / Classes

## References

- [Get Started With Xcode Playgrounds](https://learnappmaking.com/xcode-playground-get-started-with-swift/)
- [Swift Documentation](https://developer.apple.com/reference/swift)
- [Swift Language Guide](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
- [How to make something with Swift Playgrounds](https://www.freecodecamp.org/news/how-to-make-something-with-swift-playgrounds-33e560b84184/)
- [Awesome Swift Playgrounds](https://github.com/uraimo/Awesome-Swift-Playgrounds)
- [WWDC 2018: Getting the Most out of Playgrounds in Xcode](https://developer.apple.com/videos/play/wwdc2018/402/)
