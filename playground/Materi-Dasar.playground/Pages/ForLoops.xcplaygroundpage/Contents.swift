//: [Previous](@previous)
// pengulangan pada swift
import Foundation

//pengulangan pada angka
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// pengulanagab pada array
let names: [String] = ["Anna", "Alex", "Brian", "Jack"]
for i in 2..<names.count {
    print("Person \(i + 1) is called \(names[i])")
}

// bisa juga dengan menggunakan spesifik index yang kita mau atau disebut One-Sided Ranges
for name in names[2...] {
    if name == "Brian" {
        print(name + "Gokil")
    } else {
        print(name)
    }
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian
//: [Next](@next)
