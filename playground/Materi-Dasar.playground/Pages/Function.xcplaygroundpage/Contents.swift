//: [Previous](@previous)

import Foundation

// fungsi yang tidak menghasilkan return
func printData(with nama: String) {
    print(nama)
}

func printData(with nama: String, umur: Int = 10) {
    print(nama, umur)
}

printData(with: "agung", umur:  12)

// fungsi yang menghasilkan value
func add(x: Int, y: Int) -> () -> Int {

    var total = 0
    let incrementer: () -> Int = {
        total = x + y
        return total
    }

    return incrementer
}


var jumlah = add(x: 10, y: 8)


typealias StringToString = (String) -> (String)

func sapaan(greeting: String) -> StringToString {
     return { name in "\(greeting) \(name)" }
}

let halo = sapaan(greeting: "Hello")

halo("Muhammad") // prints "Hello Muhammad"
halo("Fahmi") // prints "Hello Fahmi"

add(x: 10, y: 8)

sapaan(greeting: "Hello")


// fungsion inout parameter
func changeVariable(name: inout String) {
    name = name + " wijayanto"
}

var nama = "agung"
changeVariable(name: &nama)
print(nama)


// fungsi yang mereturn lebih dari satu nilai
func compute(number: Int) -> (Int, Int, Int) {

  let square = number * number

  let cube = square * number

  return (number, square, cube)
}

let (numbers, square, cube) = compute(number: 5)
print(square, cube)

// fungsi variadic
func sumNumber(numbers: Int...) -> Int {
    var result = 0
      for num in numbers {
        result += num
      }
    return result
}

sumNumber(numbers: 2,3,4,5,6)


// function nested function
// outer function
func greetMessage(with nama: String) {

  // inner function
  func displayName() {
    print("Good Morning \(nama)!")
  }

  // calling inner function
  displayName()
}

// calling outer function
greetMessage(with: "abraham")


// fungsi recursion fungsi yang berjalan berulang ulang, hanya berhenti jika ada kondisi yang meberhentikan dia
// program to count down number to 0

func countDown(number: Int) {

  // display the number
  print(number)

  // condition to break recursion
  if number == 0 {
  print("Countdown Stops")
  }

  // condition for recursion call
  else {

    // decrease the number value
    countDown(number: number - 1)
  }
}


print("Countdown:")
countDown(number:8)


// fungsi pun bisa mempunyai nama sama asalkan parameternya berbeda
// function with two parameters
func display(number1: Int, number2: Int) {
   print("1st Integer: \(number1) and 2nd Integer: \(number2)")
}

// function with a single parameter
func display(number: Int) {
   print("Integer number: \(number)")
}

// function call with single parameter
display(number: 5)

// function call with two parameters
display(number1: 6, number2: 8)
//: [Next](@next)
