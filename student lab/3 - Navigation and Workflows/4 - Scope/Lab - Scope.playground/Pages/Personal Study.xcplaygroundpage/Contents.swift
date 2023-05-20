//: [Previous](@previous)

import Foundation

//MARK: - 개인 공부

/* Constant and Variable Scope
 + There are two places where you declare variables (Local && Global)
    by differentiating the places, you are able to make code readable and easier to debug
 
 + Global grants access anywhere within the program
    Local grants access only within the braces of given function or code body
 */

/// eg)
func printBottleCount() {
    let bottleCount = 99
    print(bottleCount)
}

printBottleCount()
//print(bottleCount)    >>> impossible to reach!


//MARK: - Variable Shadowing
/// accessing variables from two different locations within the code

func printComplexScope() {
    let points = 100
    print(points)   // 1차 접근
    
    for index in 1...3 {
        let points = 200                            // 데이터 값 변경
        print("Loop \(index): \(points + index)")   // 2차 접근 (Variable Shadowing)
    }
    
    print(points)   // 1차 접근과 동일한 값 출력 - 동일한 범위 내의 가장 가까운 값을 접근 (This var lives outside the boundaries of for loop - Thus gains access to let points = 100)
}

printComplexScope()




/// 🙋🏻‍♂️ name: String? is no longer accessible, only name: String이 무슨 말하는지 모르겠다 - Guard로 optional을 벗기고 값을 던졌기 때문에 더이상 optional String이 아니라는 건가??



//MARK: - Shadowing && Initializer
// create initializer using shadowing variables and 'self'

init(name: String, age: Int) {
    self.name = name /// 이 방식으로 접근
    self.age = age
}

//: [Next](@next)
