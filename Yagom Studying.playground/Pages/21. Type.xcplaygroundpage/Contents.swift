//: [Previous](@previous)

import Foundation

// MARK: - Type

/*
 - 데이터 기능을 묶어 놓은 것, 객체라고 부르기도 한다
    ㄴ 객체의 설계도 (????)
    ㄴ 더 쉽게 말해, 타입은 메모리에 생성될 어떤 타입의 인스턴스가 수행할 수 있는 기능과 동작을 상세하게 표현한 것
    
    e.g)
    컴퓨터
    ㄴ 제조사
    ㄴ 메모리
    ㄴ 운영체재
    ㄴ 음악을 재생할 수 있다
    ㄴ 문서를 편집할 수 있다
    ㄴ 프로그래밍을 할 수 있다
 
 - 클래스, 구조체, 열거형 등 타입에서 생성된 실체(객체)를 의미한다
    ㄴ 타입은 해당 실체들을 위한 설계도 ⬇️
    컴퓨터라는 것은 "타입" - '내' 집에 있는 실체화된 컴퓨터는 "인스턴스"

 
- Swift에 존재하는 타입은 3가지
    ㄴ struct
    ㄴ class
    ㄴ enum
 
 - 모든 타입은 대문자로 작성해야 한다!
 
 */

//MARK: - 구조체 타입으로 정의한 Computer
// 말그대로 컴퓨터의 설계도처럼 컴퓨터라는 객체가 가져야할 값과 동작들을 심어놓는 것.

/// 타입은 설계도일 뿐, 실체가 아니기 때문에 인스턴스를 생성해야한다
// 타입에 속하게 되면 변수는 property라 불리며 function은 method라고 불리게 된다
// Property와 Method의 종류는 타입 && 인스턴스로 나뉜다


struct Computer {
    var battery: Int = 100
    let manufacturer: String = "Apple"
    
    func saveData() {
        print("데이터를 저장합니다.")
    }
    
    func playVideo() {
        print("영상을 재생합니다.")
    }
}

//MARK: - 심화

/// Nested Type이 가능하다!
struct SoccerPlayer {
    enum Position {
        case goalKeeper, wing, back, forward
    }
    
    let name: String
    var position: SoccerPlayer.Position
}

struct BasketballPlayer {
    enum Position {
        case center, forward, `guard`
    }
    
    let name: String
    var position: BasketballPlayer.Position
}






//: [Next](@next)
