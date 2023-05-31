//: [Previous](@previous)

import Foundation

//MARK: - optional binding

/// optional binding
/*
옵셔널의 값을 안전하게 추출시킬 수 있는 첫번째 방법
optional 바인딩은 값이 있는지 물어보는 것
*/




//MARK: - forced unwrappiong


// dictionary에서 키 값에 항상 값이 있다고 보장할 수 없기 때문에 옵셔널 타입을 선언함

/*
var someDictionary: [String: String] = [:]
let day: Int = day(of: today)

if day == 1 || day == 30 {
    someDictionary["날씨"] = "맑음"
} else {
    someDictionary["풍향"] = "남동풍"
}
*/

var numbers: [Int?] = [0, 1, nil, 2, 5]
numbers.append(nil)



/// ⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️ 🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️ 다시 한번 보고 풀어볼 수 있도록 할 것
let someArray: [[[Int?]?]?] = [[[1, 2], nil, [3, nil, 4], nil, [5, 6]]]
//print(someArray)

//let joined = someArray.flatMap{ $0 }
//print(joined)

//let newArray = someArray.compactMap{ $0 }
//print(newArray)
//let anotherArray: [String] = someArray.compactMap{ $0 }
//print(anotherArray)

//let stringArray: [String] = someArray.map{ $0 ?? "" }


for array in someArray {
    guard let firstArray = array else { continue }
    
    for array2 in firstArray {
        guard let secondArray = array2 else { continue }
        
        for array3 in secondArray {
            if let unwrappedNumber = array3, unwrappedNumber == 3 {
                print("이렇게 해서 \(unwrappedNumber)값을 뽑아낼 수 있었나?")
            }
        }
    }
}


//: [Next](@next)
