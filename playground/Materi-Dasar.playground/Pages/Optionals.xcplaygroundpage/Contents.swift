//: [Previous](@previous)
// Materi : Optionals Data
import Foundation

/*Anda menggunakan opsional dalam situasi di mana suatu nilai mungkin tidak ada. Opsional mewakili dua kemungkinan: Terdapat nilai dari tipe tertentu, dan Anda dapat membuka opsi untuk mengakses nilai tersebut, atau tidak ada nilai sama sekali*/

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

print(convertedNumber)

var serverResponseCode: Int? = 404

serverResponseCode = nil

print(serverResponseCode)

if serverResponseCode != nil {
    print("convertedNumber contains some integer value.")
}

// Optional Binding adalah untuk penjagaan ketika datanya valid dia baru bisa di eksekusi
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

// bisa juga di gunakan untuk banyak kondisi seperti ini

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
//: [Next](@next)
