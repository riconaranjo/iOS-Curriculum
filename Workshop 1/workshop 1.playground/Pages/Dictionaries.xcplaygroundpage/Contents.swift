//: [Sets](@previous)
/*:
 
 # Dictionaries
 
 In Swift we can use the `Dictionary` datatype to organize key-value pairs. It functions like a set, but each value has a key that can be used to retrieve the value.
 
 */
var students: [Int: String] = [:]   // [Key: Value]
// empty dictionary

// appending values
students[101] = "Jeremy Smith"
students[102] = "Carlos Gutierrez"
students[103] = "Emma Martin"

print("\n# printing all students \n")

for student in students {
    print("\(student.key): \(student.value)")
}
/*:
 
 ---
 
 ## Sorting
 
 Notice that the items in a dictionary are also unordered like in a set. If you want to go over the items in a specific order, use the `.sorted` method like with `Set`.
 */
print("\n# printing all students [sorted] \n")

for (key, value) in students.sorted(by: <) {
    print("\(key): \(value)")
}
 /*:
 
 You can update dictionary values using the `.updateValue` method.
 
 */
print("\n# updating dictionary values \n")

if let oldValue = students.updateValue("Emma Rae Martin", forKey: 103) {
    print("The old value for student 103 was \(oldValue).")
    print("The new value for student 103 is \(students[103]!).")
}
/*:
 
 Read more about [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#).
 
 */
//: [Control Flow](@next)
