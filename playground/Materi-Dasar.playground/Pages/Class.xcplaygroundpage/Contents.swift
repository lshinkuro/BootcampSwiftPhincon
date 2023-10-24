//: [Previous](@previous)


import Foundation

protocol Drawable {

    var idName: String { get set }

    func draw() -> Double
}

class Square {
    var panjang: Double
    var lebar: Double

    init(panjang: Double, lebar: Double) {
        self.panjang = panjang
        self.lebar = lebar
    }

    func luasLingkaran() -> Double {
        return panjang * lebar
    }

}


class Circle: Square, Drawable{
    var radius: Double
    var idName: String {
        didSet {
            print("id Name telah di isi")
        }
    }

    var area: Double {
        get {
            return Double.pi * radius * radius
        }
        set(newArea) {
            radius = sqrt(newArea / Double.pi)
        }
    }

    init(idName: String, radius: Double, panjang: Double, lebar: Double) {
        self.idName = idName
        self.radius = radius
        super.init(panjang: panjang, lebar: lebar)
    }

    // Convenience initializer
    convenience init(idName: String, radius: Double) {
        self.init(idName: idName, radius: radius, panjang: 10, lebar: 5)
    }

    override func luasLingkaran() -> Double {
        return radius * panjang * lebar
    }

}

extension Circle {
    func draw() -> Double {
        return self.luasLingkaran()
    }
}

var myCircle = Circle(idName: "lingkaran Baru", radius: 10)

myCircle.idName = "agus"

// Access the computed property using the getter
let calculatedArea = myCircle.area
print("Area: \(calculatedArea)")

// Modify the computed property using the setter
myCircle.area = 40.0
print("New Radius: \(myCircle.radius)")
print("Area Baru: \(myCircle.area)")

print("luas lingkaran adalah \(myCircle.draw())")

//: [Next](@next)
