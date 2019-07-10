//: [Strings](@previous)
/*:
 
 # Arrays
 
 In Swift we can represent a collection of values using the `Array` datatype. An `Array` is an ordered lists of values. These values must all be of the same type, otherwise Xcode will complain — or worse you'll get a runtime error.
 
 */
var intArray = [1, 2, 3]
var emptyArray = [Int]()  // this is shorthand for Array<Int>()

print("not empty: \(intArray)")
print("empty: \(emptyArray)")
/*
 not empty: [1, 2, 3]
 empty: []
 */
/*:
 
 You can get the number of items in an array using the `.count` method.
 
 */
print("intArray has \(intArray.count) items")
/*:
 
 ## Appending
 
 You can append elements to an array using either the `.append` method or with the `+=` operator, just as with `String`.
 
 */
intArray.append(4)
intArray += [5]
intArray += [6, 7]
print(intArray)
// [1, 2, 3, 4, 5, 6, 7]
/*:
 
 ## Subscript Operator
 
 You can also access specific elements in an `Array` using the subscript `[]` operator.
 
 */
print("the first element in the array is \(intArray[0])")
print("the second element in the array is \(intArray[1])")
/*:
 
 ## Iterating
 
 You can iterate across every element in an array using a `for-in` loop:
 
 */
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
/*:
 
 If you need the index, you can also use the `.enumerated` method as shown, since that method returns tuples of (index, value).
 
 */
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
/*:
 
 Read more about [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#) in the Swift Book.
 
 */
//: [Sets](@next)
