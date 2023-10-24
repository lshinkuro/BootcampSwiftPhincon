//: [Previous](@previous)

import Foundation

enum TaskError: Error, LocalizedError {
    case oddNumber

    var errorDescription: String? {
        switch self {
        case .oddNumber:
            return NSLocalizedString("Odd numbers not supported", comment: "Odd number error")
        }
    }
}

func performTask(value: Int,
                 onSuccess: () -> Void,
                 onFailure: (Error) -> Void,
                 onProgress: (Double) -> Void) {
    if value % 2 != 0 {
        onFailure(TaskError.oddNumber)
    } else {
        for step in 0...value {
            onProgress(Double(step)/Double(value))
        }
        onSuccess()
    }
}

// memanggil closure semuanya di dalam parenthese
performTask(value: 11, onSuccess: {
       print("Done")
   }, onFailure: { error in
       print(error.localizedDescription)
   }, onProgress: { progress in
       print(progress)
   })

// memanggil cuma 2 fungsi didalam trailing sisanya di closure

performTask(value: 10, onSuccess: {
        print("Done")
    }, onFailure: { error in
        print(error.localizedDescription)
    }) { progress in
        print(progress)
    }


// second last
performTask(value: 10, onSuccess: {
    print("Done")
}) { error in
    print(error.localizedDescription)
} onProgress: { progress in
    print(progress)
}

// semuanya di luar parenthese
performTask(value: 9) {
       print("Done")
   } onFailure: { error in
       print(error.localizedDescription)
   } onProgress: { progress in
       print(progress)
   }


var numbers = [21, 34, 54, 12]
print(numbers)

var umur =  10
var nama: String {
    return "angga umur nya \(umur)"
}

print(nama)
//: [Next](@next)
