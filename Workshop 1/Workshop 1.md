# 1. Getting Started with Swift

This workshop is about learning how to code in Swift, using Xcode Playgrounds.

| Topics       | Details            |
| ------------ | ------------------ |
| Datatypes   | declarations, `Int`, `Double`, `String`, `Array`, `Dictionary`, `Bool` |
| Control flow | `if`, `for`, Scoping |
| Functions    | calling + writing functions, nested functions |
| Optionals    | what are they?     |
| Playgrounds  | how to play around with swift code |

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
let y:Int = -2      // explicit
let z = Int(100.0)  // explicit
```

### `Double`

In Swift we can represent decimal numbers — properly known as floating-point numbers — using the `Double` datatype. Floating-point numbers are numbers that have fractional components, colloquially referred to as as decimal values.

``` swift
let p = 1.0          // implicit
let q:Double = -2    // explicit
let r = Double (99)  // explicit
```

You may have noticed that Xcode does not implicitly converts numbers from type `Int` into `Double`.

Try this code:

``` swift
let d1 = 5.0     // this is a Double
let i1:Int = d1   // cannot implicitly covert Double to Int
```

Or the opposite

``` swift
let i2 = 5         // this is an Int
let d2:Double = i2  // cannot implicitly covert Int to Double
```

Xcode in both cases will complain with something along the lines of: **Cannot convert value of type 'Double' to specified type 'Int'**.

How do we fix this? The simple solution is to cast the value to the desired datatype using either `Int()` or `Double()`

``` swift
let d1 = 5.0     // this is a Double
let i1:Int = Int(d1)  // explicit conversion
```

``` swift
let i2 = 5         // this is an Int
let d2:Double = Double(i2)
```

### `Bool`

In Swift we can represent boolean values using the `Bool` datatype. A boolean value can only `true` or `false`.

``` swift
let schoolIsFun = false
var codingIsFun = true    // only when I'm not debugging

let bool:Bool = true
let piGreaterThanFive = pi > 5
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

Read more about [Strings and Characters](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html).

### `Array`

### `Dictionary`

## Control flow

### `if`

### `for`

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
