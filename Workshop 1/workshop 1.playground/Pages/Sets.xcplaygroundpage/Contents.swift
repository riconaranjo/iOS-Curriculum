//: [Arrays](@previous)
/*:
 
 # Sets
 
 Another way of representing a collection of values in Swift is by using a `Set`. You can use a `Set` when the order of the elements doesn't matter, or when you want to make sure there are no duplicate items in the list.
 
 */
var intSet: Set<Int> = [1, 2, 3, 2]

intSet.update(with: 7)      // adding to the set

print("\n# printing all set elements [unsorted] \n")

for item in intSet {
    print("unsorted set: \(item)")
}
/*:
 
 ---
 
 ## Sorting
 
 If you want to go over the set elements in a specific order you can use the `.sorted` method.
 
 */

print("\n# printing all set elements [sorted] \n")

for item in intSet.sorted() {
    print("sorted: \(item)")
}
/*:
 
 ---
 
 ## Arrays vs. Sets
 
 - Think of any **array** as a bookshelf where each item is next to each other (ordered).
     - _good for reading_
 - A **set** is a bag of items where it doesn't matter where each item is.
     - _good for inserting_
 
 Read more about [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#) in the Swift Book.
 */
//: [Dictionaries](@next)
