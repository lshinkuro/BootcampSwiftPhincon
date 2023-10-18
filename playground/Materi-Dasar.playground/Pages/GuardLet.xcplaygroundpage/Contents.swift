//: [Previous](@previous)
// Guard let adalah penjagaan yang apabila tidak sesuai kondisi maka blok fungsi akan di berhentikan
import Foundation

let possibleNumber = "123"

//guard let number = Int(possibleNumber) else {
//    fatalError("The number was invalid")
//}
//print(number)


func checkGuardLet() {
    guard let number = Int(possibleNumber) else {
        fatalError("The number was invalid")
    }
    print(number)
}

checkGuardLet()
//: [Next](@next)
