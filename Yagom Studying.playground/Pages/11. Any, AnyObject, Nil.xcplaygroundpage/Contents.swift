//: [Previous](@previous)

import Foundation
//MARK: - Any, AnyObject 타입 소개

/// Any - 아무 타입 대입 가능
var anyItem: Any = "값 출력"
anyItem = 100.12
print(anyItem)

// 이렇게 타입이 이미 있는 친구에겐 Any를 넣을수는 없어보임
//let newValue: Double = anyItem
//print(newValue)



//MARK: - Nil
// anyItem = nil   /// 어떤 값을 받아들이지만 - 빈값을 넣을 수는 없음


//: [Next](@next)
