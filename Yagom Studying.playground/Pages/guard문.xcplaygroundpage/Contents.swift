//: [Previous](@previous)

import Foundation

/*
 가드문은 말그대로 가드! 먼저해서 우리가 원하는 조건만 통과를 시킨다는 개념이다
 조건에 부합하지 않으면 아래 코드들을 실행하지 않고 종료를 하기 때문에 빠른 종료의 핵심이라고 한다 ⭐️
 */


//guard 조건 else {
    // 조건이 false면 실행 - if랑 반대
//    return  || throw
//}

func test() {
    let condition1: Bool = true
    let condition2: Bool = true
    guard condition1, condition2 else {
        return print("bye")
    }
    print("Come in")
}
test()
// 두 조건 다 참이기 때문에 come in이 출력된다 - guard문 안에 있는 코드는 따라서 실행되지 않음


//MARK: - 가드문 한계점
/*
 가드문의 경우 함수, 메서드 혹은 가드문 속에서만 사용할 수 있다는 치명적인 단점이 있다!
 */

/// 아래 코드는 continue로 특정 상황으로 인해 종료될 위기가 있더라도 다시 for i로 돌아간다
for i in 0...3 {
    if i == 1 { print(i) }
    else { continue }
}

/// 하지만 가드문은 초반에 무!조!건! 조건에 부합하지 않으면 종료되는 코드를 써야하기에 사용이 불가능하다
for i in 0...3 {
    guard i == 1 else { continue }
    print(i)
}


//MARK: - 가드문을 사용하는 이유
/*
 가드문은 가독성을 높인다.
 if를 대신하는데, 최초 조건에 부합하지 않을 경우 코드를 종료 시키다보니 조건을 확인하는 코드 길이 등 전체적으로 짧아지게 된다는 점
 */


//: [Next](@next)
