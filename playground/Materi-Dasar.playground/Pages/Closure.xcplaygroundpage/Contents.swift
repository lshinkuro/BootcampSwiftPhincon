//: [Previous](@previous)

import Foundation


/*In Swift, a closure is a self-contained block of code that can be assigned to variables, passed as arguments to functions, and returned from functions. Closures are similar to functions, but they can capture and store references to variables and constants from the surrounding context in which they are defined. Closures are used extensively in Swift, and they are a fundamental concept in the language*/



func greet(person: String, greeting: (String) -> String ) -> String {
    let message = greeting(person)
    print(message)
    return message
}

func simpleGreeting(name: String) -> String {
    return "Hello, agus!"
}

// memasukan function kedalam parameter function
greet(person: "Alice", greeting: simpleGreeting)

// atau bisa di masukan setelah fungsi nama lainya adalah trailing closure
greet(person: "kholis", greeting: { name in
    return  "Hello, Agus!"
})

let data = greet(person: "agus") { $0 }
print(data)


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


var area: String = ""

var nama: String {
    get {
        return "Hello World \(area)"
    }
    set {
      area = newValue
    }
}

print(nama)
nama = "andre"
print(nama)
//: [Next](@next)
