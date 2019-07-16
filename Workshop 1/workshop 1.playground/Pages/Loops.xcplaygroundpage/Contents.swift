//: [Switch](@previous)
/*:
 
 # Loops
 
 In addition to `if` and `switch` statements, we can loop over code using `while`, `for-in` statements.
 
 ---
 
 ## `for-in`
 
 `for-in` statements are quite useful for iterating over element in a collection, or perform the same task, as we've done several times in this workshop.
 
 */
var students = [
    101: "Jeremy Smith",
    102: "Carlos Gutierrez",
    103: "Emma Martin",
]

print("\n# regular for-in loop\n")

for student in students {
    print("\(student.key): \(student.value)")
}
/*:
 
 A different version of this `for-in` statement uses a (key, value) tuple:
 
 */
print("\n# for-in loop using tuple\n")

for (number, name) in students {
    print("\(number): \(name)")
}
/*:
 
 We can also do `for-in` with numeric ranges, shown with the three-times table:

 */
for i in 1...5 {
    print("3 x \(i) = \(3 * i)")
}

// this is the same as above
// since ..< excludes the final value
for i in 1..<6 {
    print("3 x \(i) = \(3 * i)")
}
/*:
 
 ---
 
 ## `while`
 
 A `while` loop is similar to a `for-in` loop, but it will keep executing until a certain condition is not met.
 
 */
var number = 0

while number != 5 {
    print("\(number) is not five")
    number = Int.random(in: 0...10)
}

print("\(number) is five!")
/*:
 
 Here each time the code is run, it will loop a different amount of times, since only when number is 5 will the condition `number != 5` be `false`, thus exiting out of the loop.
 
 ---
 
 ## `continue` / `break`
 
 Using `while` and `for-in` loops to repeat code execution is super common, especially when you want to perform an action on multiple collection items.
 
 - But what happens when you want to ignore some elements?
 - Or if you want to stop looping once you've found a specific item?
 
 In these cases we use either the `continue` or `break` keywords.
 
 ---
 
 ### `continue`
 
 You can use the `continue` keyword when you want to finish a loop iteration, but you don't want to stop looping altogether. The code will continue executing at the start of the next loop.
 
 */
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
/*:
 
 In this example, if a child was bad, we ignored them but we still kept looping through all the children.
 
 ---
 
 ### `break`
 
 What if you want to stop looping entirely?
 
 You can use the `break` keyword to exit the `while` or `for-in` statement altogether.
 
 */
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
    print("checking \(numbers)...")
    if numbers == winningTicket {
        print("You won the lottery!")
        break
    }
}
/*:
 
 In this example, as soon as we found the winning lottery, we stopped looking for a winning ticket, thus we stopped looping altogether.
 
 */
//: [Functions](@next)
