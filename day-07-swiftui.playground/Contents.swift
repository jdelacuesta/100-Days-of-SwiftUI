import UIKit

print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")



// The function below shows you to return your own value from a function:

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


// Example of returning a tuple:

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

// Example showing how parameter labels work

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
