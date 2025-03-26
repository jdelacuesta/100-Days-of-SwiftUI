import UIKit


// Closures Lesson

// If you wanted to skip creating a seperate function, and just assign the functionality directly to a constant or variable? Example:

let sayHello = {
    print("Hi there!")
}

sayHello()

// If you want the closure to accept parameters, they need to be written in a special way. Swift allows you to put your parameter information inside the braces, like this:

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}
// the "in" keyword is used because as a regular function, the parameters and return type would come outside the braces, so it's used to mark the end of the parameters and return type.

// Let’s take the greetUser() function we wrote earlier: it accepts no parameters, returns no value, and does not throw errors. If we were to write that as a type annotation for greetCopy, we’d write this:

var greetCopy: () -> Void = greetUser

    // 1. The empty parentheses marks a function that takes no parameters.
    // 2. The arrow means just what it means when creating a function, we're about to declare the return type for the function.
    // 3. "Void" means "nothing" – this function returns nothing. Sometimes written as "()".

// Every function’s type depends on the data it receives and sends back:

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

// Example of "sorted()" functionality

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// If we wanted to control how this function sorts, we could since "sorted()" actually allows us to pass in a custom sorting function to control exactly that. If Suzanna was the Captain of the team above, we can set the function to display her first no matter how the function sorts the team order:

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// Since "sorted()" can be passed a function to create a custom sort order, and as long as that function a) accepts two strings, and b) returns a Boolean, sorted() can use it.

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// New example showing "sorted()" using a closure:

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

// A much cleaner way to write the above code is to remove the repetitiveness as we repeat ourselves within the closure. Re-wrritten, it coud look like this:

let captainFirstTeam = team.sorted(by: { name1, name2 in
    
    
    // To clean up the code a bit more, we could write:
    
    let captainFirstTeam = team.sorted { name1, name2 in
        if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            return false
        }
        
        return name1 < name2
    }
    
    // Swift can also automatically provide parameter names for us, using shorthand syntax. With this syntax, we don't write name1, name2 or "in" anymore, instead we rely on specifically named values that Swift provides for us: $) and $1, for the first and and second strings respectively.
    
    let captainFirstTeam = team.sorted {
        if $0 == "Suzanne" {
            return true
        } else if $1 == "Suzanne" {
            return false
        }
        
        return $0 < $1
    }
    
    // Another helpful thing about closures is when used with the filter() function.
    
    let tOnly = team.filter { $0.hasPrefix("T") }
    print(tOnly)
    
    // This will print ["Tiffany", "Tasha"], because those are the only two team members whose names begins with 'T'.
    
    //With the "map()" function, we could transform every item in the array using some code of our choosing, and sends back a new array of all the transformed items:
    
    let uppercaseTeam = team.map { $0.uppercased() }
    print(uppercaseTeam) )
    
    // Example of accepting functions as parameters
    
    func makeArray(size: Int, using generator: () -> Int) -> [Int] {
        var numbers = [Int]()
        
        for _ in 0..<size {
            let newNumber = generator()
            numbers.append(newNumber)
        }
        
        return numbers
    }
    
    
    //
    func greetUser() {
        print("Hi there!")
    }
    
    greetUser()
    
    var greetCopy: () -> Void = greetUser
    greetCopy()
    
    // Function that generates an array of integers by repeating a function a certain number of times:
    
    func makeArray(size: Int, using generator: () -> Int) -> [Int] {
        var numbers = [Int]()
        
        for _ in 0..<size {
            let newNumber = generator()
            numbers.append(newNumber)
        }
        
        return numbers
    }
    
    //    The function is called makeArray(). It takes two parameters, one of which is the number of integers we want, and also returns an array of integers.
    //    The second parameter is a function. This accepts no parameters itself, but will return one integer every time it’s called.
    //    Inside makeArray() we create a new empty array of integers, then loop as many times as requested.
    //    Each time the loop goes around we call the generator function that was passed in as a parameter. This will return one new integer, so we put that into the numbers array.
    //    Finally the finished array is returned.
    
    
    func makeArray(size: Int, using generator: () -> Int) -> [Int] {
        
        //        We’re creating a new function.
        //        The function is called makeArray().
        //        The first parameter is an integer called size.
        //        The second parameter is a function called generator, which itself accepts no parameters and returns an integer.
        //        The whole thing – makeArray() – returns an array of integers.
        
        let rolls = markArray(size: 50) {
            Int.random(in: 1...20)
        }
        
        print(rolls)
        
        // Claened up version:
        
        func generateNumber() -> Int {
            Int.random(in: 1...20)
        }
        
        let newRolls = makeArray(size: 50, using: generateNumber)
        print(newRolls)
        
        // Example of oa function that accepts three function parameters, each of which accept no parameters and return nothing:
        
        func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
            print("About to start first work")
            first()
            print("About to start second work")
            second()
            print("About to start third work")
            third()
            print("Done!")
        }
    }
    
    // Cleaner Version:
    
    doImportantWork {
        print("This is the first work")
    } second: {
        print("This is the second work")
    } third: {
        print("This is the third work")
    }
    
    // MARK: - Checkpoint 5 Exercise
    
    let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
    
    luckyNumbers {
        .filter { $0 % 2 != 0 } // Remove even numbers
        .sorted() // Sort in ascending order
        .map { "\($0) is a lucky number" } // Format to string
        .forEach { print($0) } // Print each element on a new line
}
