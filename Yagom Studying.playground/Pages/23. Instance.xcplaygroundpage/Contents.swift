//: [Previous](@previous)

import Foundation

//MARK: - 인스턴스 초기화 && 규칙

/// Computer() == Computer.init()
// 인스턴스는 메모리에 생성된 이후, 종료를 하면 소멸이 되는데(메모리 상에서) >> 특정 시기에 처리를 해야할 경우, deinit 메서드로 자발적으로 내릴 수도 있다

// ⭐️ 값이 없을 경우 런타임 도중 종료되는 상황들을 방지하고자 만들어진 optional 값처럼, "instance의 초기화 과정"의 경우에도 optional처럼 상황을 방지하고자 만들었다. instance가 초기화될 때 많은 규칙이 있지만 -
    // 규칙의 대 전제는 instance의 property에는 값이 항상 보장되어야 한다는 점. >> 즉, 값이 없을 경우 코드는 실행되지 않는다
/// initializer 내부에는 인스턴스의 property 값을 항상 적절한 값으로 초기화 하거나 - instance property가 기본값을 갖고 있어야 한다는 점을 의미 (default를 제공해야한다는 의미이구나)




//: [Next](@next)
