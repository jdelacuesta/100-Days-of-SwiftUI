import UIKit

// Code Exercise for Error Handling

// Scope: If the user asks us the check how strong their password is, we'll flag up a serious error if the password is too short or is obvious.

// Function to define possible errors that might happen. We use an enum that builds on Swift's existing Error tyoe, like this:
enum PasswordError: Error {
    case short, obvious
}

// Writing an updated function that checks that strength of a password (in this case, if it's fewer than 5 characters or is extremly well known - it'll thrown an error immediately

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// Error handling method after function is called

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

// Catch method for Error Handling

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// Example of a function that takes a throwing closure without 'rethrows':

func execute(_ closure: (() throws -> Void)) throws {
  try closure()
}

do {
  try execute {
    print("hello!")
  }

  try execute {
    throw MyError.myErrorCase
  }
} catch {
  print(error)
}

// Cleaned up version of above code:

func execute(_ closure: (() throws -> Void)) rethrows {
  try closure()
}

execute {
  print("hello!")
}

do {
  try execute {
    throw MyError.myErrorCase
  }
} catch {
  print(error)
}

// MARK: - Checkpoint 4 Exercise

// Challenge: Write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number.

// Things to keep in mind:
// 1. You can't use Swift's built-in "sqrt()" function or similar -- you need to find the square root yourself.
// 2. If the number is less than 1 greater than 10,000 you should throw an "out of bounds" error.
// 3. You should only consider integer square roots -- don't worry about the square root of 3 being 1.732, for example.
// 4. If you can't find the squrae root, throw a "no root" error.

enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func integerSquareRoot(_ input: Int) throws -> Int {
    guard input >= 1, input <= 10000 else {
        throw SquareRootError.outOfBounds
    }
    
    for i in 1...input {
        if i * i == input {
            return i
        } else if i * i > input {
            break
        }
    }
    
    throw SquareRootError.noRoot
}

// Test cases:
do {
    let result = try integerSquareRoot(64)
    print("Square root is \(result)")
} catch SquareRootError.outOfBounds {
    print("Out of bounds. Input must be between 1 and 10,000.")
} catch SquareRootError.noRoot {
    print("No integer square root found.")
} catch {
    print("An unknown error occurred.")
}
