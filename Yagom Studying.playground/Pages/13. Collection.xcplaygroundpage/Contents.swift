//: [Previous](@previous)

import Foundation

//MARK: - Collection: Array
/*
 순서가 있다
 중복 값 제외 안됨~
 */

/// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()

/// Array 채우기
integers.append(1)
integers.append(100)
integers.append(90)
//integers.append(100.1) 에러 발생

/// Array 포함 여부 확인
integers.contains(1)
integers.contains(99)

/// Array 값을 더할 수 있네
//integers.append(30)
//integers
//var newIntegers: Array<Int> = Array<Int>()
//newIntegers.append(20)
//newIntegers.append(10)
//newIntegers.append(76)
//newIntegers
//let arraySet: Array<Int> = newIntegers + integers

/// Array 일부 비우기
integers.remove(at: 0)
integers.removeLast()
integers.removeFirst()

integers


/// ⭐️ 다양한 빈 Int Array 생성 방법
// Array<Double> && [Double]는 같은 표현식
var doubles: Array<Double> = [Double]()

var strings: Array<String> = [String]()
var characters: [Character] = []

/// Array 변동 불가 값
// 다 안된다~
let immutableArray = [1,2,3]
//immutableArray.append(4)
//immutableArray.remove(at: 0)



//MARK: - Collection: Dictionary
/*
 순서가 없다
 */

/// 빈 Dictionary 생성
// ⭐️ Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "oldValue"
anyDictionary["anotherKey"] = 100
anyDictionary

/// Dictionary 키에 할당된 값 변경
anyDictionary["someKey"] = "newValue"
anyDictionary

/// Dictionary 값 제거 방식
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
anyDictionary   /// 모든 값이 삭제가 되었다!

/// 다양한 빈 Dictionary 생성 방법
let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["Name": "Jack", "Gender": "Male"]

print(initializedDictionary)

// 🔥아래 코드는 값이 없을 수 있다는 불확실성이 존재하기 때문에 실행되지 않는다
//let someValue: String = initializedDictionary["name"]


//MARK: - Collection: Set
/*
 중복 값은 제외됨~
 */

/// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()

/// Set 값 넣기
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
integerSet

/// Set 값 확인
integerSet.contains(1)
integerSet.contains(100)
integerSet.contains(90)

/// Set 값 제거
integerSet.remove(100)
integerSet
integerSet.removeFirst()

/// Set 값 갯수 파악
integerSet.count


/// Set 합치기? >> 이건 set에서만 가능한건가?
let setA: Set<Int> = [1,2,3,4,5,6]
let setB: Set<Int> = [5,6,7,8,9,10]

let union = setA.union(setB)


/// Set 값 정렬
let sortedUnion: [Int] = union.sorted()
/// 🔥 아래는 왜 안될까?
//let sortedUnion: Set<Int> = union.sorted()

/// 두 개의 Set 값 교차하기
let intersection: Set<Int> = setA.intersection(setB)
let subtraction: Set<Int> = setA.subtracting(setB)





//: [Next](@next)

