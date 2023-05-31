//: [Previous](@previous)

import Foundation

//MARK: - 참과 거짓을 표현하는 논리값 - Bool ⭐️⭐️⭐️ 아래에 있는 고급 연산자 공부해봐야겠네

// 프로그래밍에서 참과 거짓으로 값을 비교하고 결과를 판단할 수 있고, 논리 연산을 위해 사용할 수 있다
 /*
  논리 연산에는 다양한 연산자들이 존재하는데,
  1. A == B
  2. A >= B
  3. A <= B
  4. A > B
  5. A < B
  6. A != B
  
  전체적으로 값을 확인해서 T/F를 반환한다
 */

let one = 1
let two = 2

one == 1
one == two
one >= two
one <= two
one > 0
one < two
1 != one
one != two

/// 1보다 크고, 4보단 작다 같은 표현식은 불가능
// 그렇다면 확인해야하는 값들이 많아지면 어떻게 할 수 있을까?

//MARK: - And와 Or을 의미하는 논리연산자

//&& - 두 조건 모두 맞아야 True
//|| - 두 조건 중 하나라도 맞으면 True

true && false == false
true && true == true
true || false == true
true || true == true

let isGoodDay = true
let imGoodMood = true

isGoodDay == true && imGoodMood == true

isGoodDay && imGoodMood
isGoodDay == true || imGoodMood == true
isGoodDay || imGoodMood

//MARK: - And와 Or 심화과정

/*
 &&가 그리고를 의미하면, &는 어떤 의미를 가지고 있는걸까?
 - &와 |는 비트연산자 (bitwise operator) 논리 연산을 비트단위로 하는 연산자
 컴퓨터는 자료를 0과 1, 즉 2진수로만 다루는데 이떄 사용하는게 비트 - 그 비트끼리 연산할 때 사용하는 연산자가 &와|인 것
 
 한 예)
 1 & 2를 연산하면 1은 2진수로 0001, 2는 0010
 &&를 하면 값은 0000
 ||을 하면 값은 0011 (값 3)
 
 비트연산은 프로그래밍에서 수학적 연산보다 비트검출, 옵션 전달의 목적으ㅗㄹ 사용이 된다.
 */

/// 다양한 옵션 선택지를 전달할 때 - 예재
let apple: Int = 1
let orange: Int = 2
let banana: Int = 4

func printFavoriteFruits(_ selectedFruits: Int) {
    print("사과를 좋아하는가 : \((selectedFruits & apple) != 0)")
    print("오렌지를 좋아하는가 : \((selectedFruits & orange) != 0)")
    print("바나나를 좋아하는가 : \((selectedFruits & banana) != 0)")
}

printFavoriteFruits(apple | banana)
// apple | orange == 0001 | 0010 == 0011 🙋🏻‍♂️ 이게 진짜 신기하네

let vibrationMide = 1
let airplaneMode = 2
let wifi = 4

let current = vibrationMide & airplaneMode


(1, 4, "candy") < (2, 4, "canda")
(3, "apple") < (3, "bird")


let CH = 40
let header = true
let RH = CH + (header ? 50 : 20)
// 내부에서 먼저 계산을 하고 CH에 더해지는 구성
// if header == true, 50 - not 20












//: [Next](@next)
