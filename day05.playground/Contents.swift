import UIKit

//MARK: - Checking Conditions

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

//The second is !=, which means “is not equal to”, and is used like this:

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}

// MARK: - Checking Multiple Conditions

// When we use if we must provide Swift some kind of condition that will either be true or false once it has been evaluated. If you want to check for several different values, you can place them one after the other like this:

let age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

// Now Swift only needs to check age once: if it’s greater than or equal to 18 the first print() code is run, but if it’s any value less than 18 the second print() code is run.

// So, now our condition looks like this:

if someCondition {
    print("This will run if the condition is true")
} else {
    print("This will run if the condition is false")
}

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}


