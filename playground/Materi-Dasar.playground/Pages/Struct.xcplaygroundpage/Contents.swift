//: [Previous](@previous)

import Foundation

struct Point {
    var x: Int
    var y: Int
}

var originalPoint = Point(x: 1, y: 2)
originalPoint.x = 10
print(originalPoint)
var updatePoint = originalPoint
print(updatePoint.x)


//: [Next](@next)
