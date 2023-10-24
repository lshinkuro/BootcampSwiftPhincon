//: [Previous](@previous)

import Foundation

enum Days: String, CaseIterable  {
   case Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday

    func description() -> String {
        switch self {
        case .Sunday, .Saturday:
            return "Hari libur Cuy"
        case .Monday, .Tuesday, .Friday, .Wednesday:
            return "Hari Kerja"
        default:
            return "Cuti Dulu"
        }
    }
}

var namaHari: Days = .Monday

print(Days.allCases.count)

// Iterate through all cases
for direction in Days.allCases {
    print(direction.description())
}
//: [Next](@next)
