//: [Previous](@previous)

import Foundation

//MARK: - if else 조건문

let someInteger = 99

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}


//MARK: - Switch

switch someInteger {
case 0:
    print("Zero")
case 1..<100:
    print("100 이하")
case 100:
    print("100")
case 101...Int.max:
    print("100 초과")
default:
    print("Unknown")
}


switch "jake" {
case "jake":
    print("Jake")
    fallthrough
case "john":
    print("John")
    fallthrough
case "jack":
    print("Jack")
case "yagom":
    print("빙고")
default:
    print("없음")
}




//: [Next](@next)
