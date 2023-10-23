//: [Previous](@previous)
// Pengenalan Variable Di dalam Swift
import Foundation

// variable yang sudah ada initialisasinya
var name: String = "Akbar"
var greeting = "playground"

name = "agung"

print("Nama Saya Adalah" , name , "Hello \(greeting)")

// variable Integer
var number: Int = 10
number = 11

print("Umur saya \(number) tahun")

// variable yang punya nilai default

var namaKelas: String = String()
var jumlahHewan: Int = Int()

namaKelas = "kelas Fisika"

print(namaKelas)

// variable yang tidak bisa di ubah nilainya  atau disebut constant

let hariLibur: String = "minggu"
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"


// inisiasi banyak variable
var red, green, blue: Double

// penggunaan semicolons

let cat = "🐱"; print(cat)


// penggunaan type alias

typealias AudioSample = UInt16
var maxAmplitudeFound = UInt16.min

// pnggunaan boolean variable

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

// penggunaan Tuple

/*Tupel mengelompokkan beberapa nilai menjadi satu nilai gabungan. Nilai-nilai dalam tuple bisa bertipe apa saja dan tidak harus bertipe sama satu sama lain.*/

var http404Error: (Int, String, Double) = (404, "Not Found", 5.3)

http404Error.0 = 405

var (statusCode, statusMessage, doubleNumber ) = http404Error

print("The status code is \(http404Error.0)")
print("The status message is \(statusMessage)")

// array string

var kelompokHewan: [String] = ["Sapi", "Babi", "Kerbau", "Ayam"]

print(kelompokHewan[0])
//: [Next](@next)
