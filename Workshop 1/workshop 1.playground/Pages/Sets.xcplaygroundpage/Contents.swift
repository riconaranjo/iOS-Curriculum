//: [Arrays](@previous)
/*:
 
 ## Sets
 
 Another way of representing a collection of values in Swift is by using a `Set`. You can use a `Set` when the order of the elements doesn't matter, or when you want to make sure there are no duplicate items in the list.
 
 */

var intSet: Set<Int> = [1, 2, 3, 2]

for item in intSet {
    print("unsorted set: \(item)")
}
/*
 unsorted set: 3
 unsorted set: 1
 unsorted set: 2
 */
/*:
 
 If you want to go over the set elements in a specific order you can use the `.sorted` method.
 
 */
for item in intSet.sorted() {
    print("sorted: \(item)")
}
/*
 sorted: 1
 sorted: 2
 sorted: 3
 */
/*:
 
 Read more about [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#) in the Swift Book.
 */
//: [Dictionaries](@next)
