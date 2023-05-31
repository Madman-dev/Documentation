//: [Previous](@previous)

import Foundation

//MARK: - Optional

/// 왜 옵셔널은 필요한걸까??

/*
 nil 값을 명시적으로 보여주는 것
 코드만으로 표현할 수 있어 주석을 작성하지 않아도 됨
 nil 체크할 필요가 없어진다 - 마음 놓고 활용 가능~
 
 즉,
 1. 효율적인 코딩과
 2. 예외 사항을 최소화 하는 코드
 */


/// optional 이란 enum과 general의 결합이라고 볼 수 있다
/* 즉, 값이 있을수도 있고 없을수도 있다를 표현하는거라고 보면 된다!

 enum optional<Wrapped> : ExpressibleByNilLiteral {
    case none
    case some<Wrapped>
 }
 */


//MARK: - implicitly Optional - 암시적 추출 옵셔널

var optionalValue: Int! = 100

switch optionalValue {
case .none:
    print("This optional variable is nil")
case .some(let value):
    print("value is \(value)")
}

/*
- 기존 변수처럼 사용이 가능하다
- nil도 할당할 수 있음
*/

var optionalValue두번째: Int? = 100

switch optionalValue {
case .none:
    print("This optional variable is nil")
case .some(let value):
    print("value is \(value)")
}
// 하지만 일반 타입이 아닌 다른 타입으로 구분이 되기 대문에 연산불가



//: [Next](@next)
