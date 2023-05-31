//: [Previous](@previous)

import Foundation

//MARK: - 기본 데이터 타입 - VIDEO

var someBool: Bool = true
someBool = false

var someInt: Int = 100
//someInt = 100.1

/// unsigned Integar 양의 값!
var someUInt: UInt = 100
//someUInt = -100
//someUInt = someInt >> 불가능

var someFloat: Float = 3.14
var someDouble: Double = 3.14
var someCharacter: Character = "A"

var 홍길동이름: String = "오호"
/// ⭐️ 우리는 왜 타입이 필요할까??
/// 컴퓨터는 0과 1만 알고 있다 - 따라서 데이터를 저장하기 위해선 데이터를 0과 1로 변환하는 규칙을 따라 변환하고 저장을 한다.
/// 즉, 컴퓨터가 특정 데이터 값에 접근하기 위해선 어떤 규칙의 0과 1로 데이터가 저장되어 있는지 확인을 해야하며 - 규칙이 다르면 읽고 쓰는 규칙이 달라지기 때문에 Double + Int, String + Int같은 구조로는 불가능한 것이다
var test: String = "Quiet Please"
var num: Int = 100
print(num)

var test1 = test + String(num)
print(test1) // 🙋🏻‍♂️ >>> 이게 되는 이유는??
let newNum = String(num)
print(newNum)
/// 🙋🏻‍♂️ 그러면 변환을 한다는 건 임시로 규칙을 씌워서 더할 수 있게 만드는 건가?


var 홍길동나이: Int = 10000
var 세월: Double = 10000
// 둘의 차이는...타입! 컴퓨터는 두 데이터 값을 다르게 저장한다 '0 과 1'을 읽고 쓰는 규칙이 달라지기에 헷갈릴 수 없다(컴퓨터가)
//세월 = 홍길동나이 //is impossible - because 읽고 쓰는 규칙이 다르기 때문에!



//MARK: - 기본 데이터 타입 - 정수 타입
/// 정수에는 Int와 UInt가 존재 - compiler는 두가지를 완전히 다른 타입으로 인식
// Int는 +- 모두 포함 / UInt는 양수의 정수 (Unsigned Integer) - unsigned라는 의미가 +나 -가 별도 표기되지 않은 친구들을 의미한다. 따라서 Unsigned Int는 ALWAYS NON-NEGATIVE를 의미하는 것

var integer: Int = -100
let unsignedInteger: UInt = 50
integer = Int(unsignedInteger)  /// 이렇게 값을 할당하는 건 어떤 방식으로 규칙이 씌워지는 거지?

//MARK: - 기본 데이터 타입 - BOOLEAN
// Booleans only take care of true or false answers


//MARK: - 기본 데이터 타입 - 실수 타입
/// 실수타입을 사용하는 값을 뜻한다. 이들은 Float과 Double이 존재하는데,
/// 64비트의 부동소수를 표현하는 Double - 소수 15의 자리
/// 32비트의 부동소수를 표현하는 Float 존재 - 소수 6의 자리
/// 🙋🏻‍♂️ Double > Float인 이유? ->> 메모리 이유? >> Precision!!! 데이터 값을 저장하고 보관하는 입장에서 6의 자리보다 15자리로 계산을 하는게 더 명확한 값을 도출한다


/// Only able to hold 7 digit decimal points - including UInt v
let floatValue: Float = 11435.312123123

//MARK: - 기본 데이터 타입 - 문자 타입 (Character) && String

/* Character
 + Character is able to hold '1' Character from String
 ++ 유니코드 문자 사용 가능
 */

/* String
 + append로 문자열을 이어갈 수 있음
 ++ 연산자로 이어붙일 수 있음
 +++ Boolean을 활용해서 문자열 비교
 */

var hello: String = "Hello"
var name: String = "Jack"
let greeting = hello + " " + name + "!"
print(greeting)

var isString: Bool = false
isString = hello == "Hello"
isString = name == "Hello"
isString = name == "Jack"

//MARK: - 특수 문자
print("문자열 내부에 \n 이런 \"특수문자\"를 \t 사용하면 \\이런 놀라운 결과를 볼 수 있습니다")
print(#"문자열 내부에서 특수문자를 사용하기 싫다면 문자열 앞, 뒤에 #을 붙여주세요. \n이 더이상 줄바꿈이 아니네요?"#)
let number:Int = 100
print(#"특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 이렇게 \#(number) 해보세요"#)

//: [Next](@next)
