//: [Loops](@previous)
/*:
 
 # Functions
 
 ## Defining and Calling Functions
 
 */
/**
 simple greeting function
 - parameters:
 - person: the person's name to be greeted
 */
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Anna"))
print(greet(person: "Brian"))

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))
/*:
 
 ## Function Parameters and Return Values
 ### Functions Without Parameters
 
 */
func sayHelloWorld() -> String {
    return "hello, world"
}

print(sayHelloWorld())
/*:
 
 ## Functions With Multiple Parameters

 */
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}

print(greet(person: "Tim", alreadyGreeted: true))
/*:
 
 ## Functions Without Return Values

 */
func greetings(person: String) {
    print("Hello, \(person)!")
}

greetings(person: "Dave")
//: [Playing around with Swift](@next)
