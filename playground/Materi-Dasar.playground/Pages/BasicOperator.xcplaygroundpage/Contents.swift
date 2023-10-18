//: [Previous](@previous)
// basic Operator di swift
import Foundation

// The assignment operator (a = b) initializes or updates the value of a with the value of b:
let b = 10
var a = 5
a = b
// a is now equal to 10

// assignment dengan tuple
let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2

// Arithmetic Operators
// ada + - * / operator yang di gunakan untuk aritmatik
print(1 + 2)       // equals 3
print(5 - 3)       // equals 2
print(2 * 3)      // equals 6
print(10.0 / 2.5)  // equals 4.0

// operator modular

print(9 % 4 ) // equals 1


// Comparison Operators atau operator untuk mebandingan 2 nilai atau lebih yang hasilnya berupa boolean

print(1 == 1)   // true because 1 is equal to 1
print(2 != 1)   // true because 2 isn't equal to 1
print(2 > 1)    // true because 2 is greater than 1
print(1 < 2)    // true because 1 is less than 2
print(1 >= 1)  // true because 1 is greater than or equal to 1
print(2 <= 1)   // false because 2 isn't less than or equal to 1

// ternary operator itu seperti if else yang di persingkat
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight)
// rowHeight is equal to 90
//: [Next](@next)
