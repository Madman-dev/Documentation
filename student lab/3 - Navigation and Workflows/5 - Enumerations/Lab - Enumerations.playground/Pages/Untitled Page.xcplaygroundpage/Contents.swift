//: [Previous](@previous)

import Foundation

//MARK: - Enumeration
/*
 여러 옵션들을 하나의 옵션으로 묶어 제시할 수 있는 코드
 한 예로 비행기라고 하면 aisle, middle, window
 
  🙋🏻‍♂️ 옵션이 2개면 enum을 쓰는건 별로인건가?? 언제 enum을 쓰고 언제 안쓰는지에 대한 호기심이 있다
 */

enum CompassPoint {
    case north
    case west
    case east
    case south
}

//var compassHeading = CompassPoint.north
//var compassHeading: CompassPoint = .north

//compassHeading = .east
//compassHeading = .south


let compassHeading: CompassPoint = .north

switch compassHeading {
case .north:
    print("내가 바라보고 있는 포인트는 north")
case .east:
    print("내가 바라보고 있는 포인트는 east")
case .west:
    print("내가 바라보고 있는 포인트는 west")
case .south:
    print("내가 바라보고 있는 포인트는 south")
}

//let compassHeading: CompassPoint = .west
//
//if compassHeading == .west {
//    print("내가 바라보고 있는 포인트는 west")
//}

//MARK: - Difference between Struct and Enum
/*
 Enum is better suited to reduce typos or making writing stringy?
 */

"""
eg)
"""
enum Genre {
    case Horror
    case Happy
    case comedy
    case Animated
}

struct Movie {
    var name: String
    var yearOpened: Int
    var genre: Genre
}

let firstMovie = Movie(name: "터미네이터", yearOpened: 2020, genre: .Horror)
/// 개발자가 코드를 정리할 때 덜 헷갈리고 놓칠 가능성이 줄어든다 -> 이점! ERROR-PRONE

//: [Next](@next)
