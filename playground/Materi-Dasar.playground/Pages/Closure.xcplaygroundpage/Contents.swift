//: [Previous](@previous)

import Foundation


/*In Swift, a closure is a self-contained block of code that can be assigned to variables, passed as arguments to functions, and returned from functions. Closures are similar to functions, but they can capture and store references to variables and constants from the surrounding context in which they are defined. Closures are used extensively in Swift, and they are a fundamental concept in the language*/



func greet(person: String, greeting: (String) -> String) {
    let message = greeting(person)
    print(message)
}

func simpleGreeting(name: String) -> String {
    return "Hello, \(name)!"
}

// memasukan function kedalam parameter function
greet(person: "Alice", greeting: simpleGreeting)

// atau bisa di masukan setelah fungsi nama lainya adalah trailing closure
greet(person: "kholis") { name in
    return  "Hello, \(name)!"
}


// fungsi yang mereturn fungsi lagi
func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo())  // 2
print(incrementByTwo())  // 4

// variable closure
typealias SumTwoInt = (Int, Int) -> Int
let addClosure: SumTwoInt = { (a, b) in
    return a + b
}

// Use the closure
let result = addClosure(3, 5) // result is now 8
print(result)
//: [Next](@next)
