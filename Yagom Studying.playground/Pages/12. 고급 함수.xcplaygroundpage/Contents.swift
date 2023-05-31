//: [Previous](@previous)

import Foundation

//MARK: - 매개변수

/// 매개변수 기본값?
/*
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값) -> 반환타입 {
    함수 구현부
    return 반환 값
 }
 */

func greeting(friend: String, me: String = "yagom") {
    print("\(friend)의 친구는 \(me)")
}

greeting(friend: "John")    /// 기본값이 있는 매개변수는 생략 가능
greeting(friend: "John", me: "Yagom")

//MARK: - 전달인자 레이블

/*
 func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 = 매개변수 기본값) -> 반환타입 {
    함수 구현부
    return 반환 값
 }
 */

func greeting(to friend: String, from me: String = "yagom") {
    print("\(friend)의 친구는 \(me)")
}

greeting(to: "Jack", from: "Steve")
/// ⭐️ 함수 내부에서는 매개변수 \ 함수 호출에서는 전달인자가 사용된다

//MARK: - 가변 매개변수

/*
 func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    함수 구현부
    return 반환 값
 }
*/

func sayHelloFriends(me: String, friends: String...) -> String {
    return "Hello \(friends), it's me \(me)"
}

print(sayHelloFriends(me: "Jack", friends: "Eric", "BamBam", "Yena"))


//MARK: - 함수 변형
/// Swift는 함수형 프로그램 패러다임 언어
/// 일급객체이기에 변수, 상수에 저장 가능 && 매개변수를 통해 전달 가능

// (매개변수1타입, 매개변수2타입 ...) -> 반환타입
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("잉", "동준") /// 이건 좀 소름돋네

someFunction = greeting(friend:me:)
someFunction("Daebak", "Sagun")

/// ⭐️와씨... 이해 안되기 시작
func runAnother(function: (String, String) -> Void) {
    function("Jenny", "Lisa")
}

runAnother(function: greeting(to:from:))
runAnother(function: someFunction)




//: [Next](@next)
