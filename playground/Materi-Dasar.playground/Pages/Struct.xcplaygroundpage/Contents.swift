//: [Previous](@previous)

import Foundation

struct Identity {
    var nama: String
}

struct Point {
    var x: Int
    var y: Int
    var identity: Identity

    init(xAxis: Int, yAxis: Int, identity: Identity) {
        self.x = xAxis
        self.y = yAxis
        self.identity = identity
    }

    func square() -> Int {
        return x * y
    }

    static func showName() {
        print("hail")
    }


}

//var originalPoint = Point(xAxis: 2, yAxis: 3)
var originalPoint = Point(xAxis: 2, yAxis: 12, identity: Identity(nama: "agung" ))
originalPoint.x = 10
print(originalPoint.identity.nama)

Point.showName()


var secondPoint = originalPoint
secondPoint.x = 50

print(originalPoint.x)




// struct equatable
struct MyStruct: Equatable, Codable {
    var property1: Int
    var property2: String
    var property3: String

    static func == (lhs: MyStruct, rhs: MyStruct) -> Bool {
        return lhs.property1 == rhs.property1 && lhs.property2 == rhs.property2
    }
}

let instance1 = MyStruct(property1: 42, property2: "hallo", property3: "baru")
let instance2 = MyStruct(property1: 42, property2: "Hello", property3: "lama")

if instance1 == instance2 {
    print("Instances are equal")
} else {
    print("Instances are not equal")
}


//: [Next](@next)
