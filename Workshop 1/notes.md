# swift introduction notes

## goals

My goals for this workshop are:

1. interactive
2. informative
3. related to overall workshop structure

# info

Rough ideas and notes for my workshop, structure based off videos by Matt Heaney Apps.

[swift book](https://docs.swift.org/swift-book/)

## variables

Coding is basically about storing, changing, and using information stored in variables

- this information is used to create an app /game

**types of variables:**

- integers
- doubles
- strings
  - interpolation
- boolean
- tuples
  - named tuples

`// also nil`

### declarations

var + let

### typecasting

- int to double
- double to int
- to string

### arrays

Collections of variables in list.

- initializing
  - they all have to be the same type
- accessing array elements
  `.first`
  `.last`
- adding / removing
  `.append`
  `.insert`
  `.remove`
  `.removeFirst`
  `.removeLast`
- sort / contains
  `.sort`
  `.contains`
- count
  `.count`

### sets

Like an array, but no duplicates, quicker with writing.

- initializing
  `Set<String>`
- adding / removing
  `.insert`
  `.remove`
- set operations
  merge: `set1.union(set2)`
  compare similarity: `set1.intersection(set2)`
  - leaves only elems in set1 and set2
  remove similarity: `set1.subtracting(set2)`
  - leaves only elems in set1 and not in set2

### dictionaries

Like a list with keys + entries.

- initialization
- reading / writing values
  `dict[key]`
  `.updateValue(value,forKey: key)`
  - no key found -> nil
  - if modifying entry same as adding
- removing values
   `.removeValue(forKey: key)`

### optionals

When you need to create variables that may not always be initialized

- declare using `?`
- unwrap using `!`
  - only use if you are absolutely certain of value
  - if value is nil, you will get a runtime error
- if let
  - checks if value is not nil [?]
  - else...

## Control Flow

[documentation](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)

### if statements

Allows to create logic, only run this code of something is true.  Say game over if lives 0.

- if equals
- if not equals
- if less / greater than (or equals)
- && and ||
- else / else if

`// Also switch statements`

### functions

Block of code that performs a certain task

- void functions
- passing parameters
  `func printUsername(username name: String)`
  - internal variable name is `name`
  - externally variable is `username`
- returning parameters
  `-> Double`
- scoping

### for / while loops

#### for

``` swift
for i in 1..10    // up to [exclusive]
for i in 1...10   // up to [inclusive]
```

#### while true

this will run at least once, then repeats if while condition is true

``` swift
repeat {
  code
} while true
```

## control flow

## enums + structs

from apple swift book:

_All structures and enumerations are value types in Swift. This means that any structure and enumeration instances you create—and any value types they have as properties—are always copied when they are passed around in your code._

- struct / enum values copied when passed

### Enums

Use these with to define a series of possibilities in a type-safe way.

- enums entries can hold values [raw values]
- switch-case statements with enums don't need default

### Structs

A collection

## Classes

from apple swift book:

_Unlike value types, reference types are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a reference to the same existing instance is used._

- compared with structs:

_Structs are preferable if they are relatively small and copiable because copying is way safer than having multiple references to the same instance as happens with classes. This is especially important when passing around a variable to many classes and/or in a multithreaded environment. If you can always send a copy of your variable to other places, you never have to worry about that other place changing the value of your variable underneath you._

[from here](https://stackoverflow.com/questions/24232799/why-choose-struct-over-class/24232845#24232845)

## Playgrounds

### Simple View

This is an example of how to create a simple view with a centred text label.

``` swift
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {

    var label  = UILabel()
    var label2 = UILabel()

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black


        label.frame = CGRect(x: 150, y: 200, width: 150, height: 20)
        label.text = "Hello World!"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont(name: "Avenir", size: 20)

        view.addSubview(label)
        view.addSubview(label2)
        self.view = view
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.label.center.x  = self.view.center.x
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

```