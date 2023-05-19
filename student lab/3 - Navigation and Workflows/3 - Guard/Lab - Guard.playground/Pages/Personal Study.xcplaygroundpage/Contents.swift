//: [Previous](@previous)

import Foundation

//MARK: - Difference between if and Guard

func divide(_ number: Double, by divisor: Double) {
    if divisor != 0.0 {
        let result = number / divisor
        print(result)
    }
}

func divided(_ number: Double, by divisor: Double) {
    guard divisor != 0.0 else {
        return
    }
    let result = number / divisor
    print(result)
}

divide(1234567865432.0, by: 123456780987.0)
divided(1.0, by: 0.01)


calculateResult(a: 4, b: 8, c: nil) /// guard문은 nil값이 있는지 확인을 하는데, 있으면 true를, 아니면 else안에 있는 코드를 실행하는데, c값에 nil이 있다면 - 전체 코드에서 마지막 문단 return aValue + bValue + cValue는 실행되지 않는다 (정확히 말하면 거기까지 읽지도 않는다. c값이 nil이기 때문에 딱 else 영역에 있는 'return bValue'만 하고 코드를 종료하는 것) ⭐️⭐️⭐️⭐️

func calculateResult(a: Int?, b: Int?, c: Int?) -> Int {
    guard let aValue = a else { return 0 }
    guard let bValue = b else { return aValue }
    guard let cValue = c else { return bValue }
    
    return aValue + bValue + cValue
}


//: [Next](@next)
