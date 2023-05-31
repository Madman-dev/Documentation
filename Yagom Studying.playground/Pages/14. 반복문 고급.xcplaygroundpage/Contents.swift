//: [to Collection](@previous) ||
//: [to 논리연산자](@next)

import Foundation

var integers = [1,2,3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

//MARK: - For-in 구문

/// for item in items {
/// print(item)
/// }

for integer in integers {
    print(integer)
}

// dictionary에서 item은 Key, Value로 구성되어 있는 튜플 타입 - Iteration Item
for (name, age) in people {
    print("\(name),: \(age)")
}


//MARK: - While 구문

///while condition {    값이 아닌 참,거짓 구분이 가능한 조건!
///     code
///}

while integers.count > 1 {
    integers.removeLast()
}


//MARK: - Repeat-while 구문

///repeat {
///     code
/// while condition

repeat {
    integers.removeLast()
} while integers.count > 0


//: [to Collection](@previous) || 
//: [to 논리연산자](@next)
