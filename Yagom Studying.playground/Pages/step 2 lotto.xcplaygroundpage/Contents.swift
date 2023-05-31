//: [Previous](@previous)

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var numberDrawn: [Int] = []

repeat {
    // 번호를 랜덤으로 뽑는다
    var pickedNumber = Int.random(in: 1...45)
    
    // collection 안에 같은 값이 있는지 확인
    if pickedNumber < 7 {
        if numberDrawn.contains(pickedNumber) {
            continue
        } else {
            numberDrawn.append(pickedNumber)
        }
    } else {
        continue
    }
    
    // 컬렉션에 6개의 번호가 담겼는지?
} while numberDrawn.count != myLottoNumbers.count


// 확인하는 부분
switch numberDrawn.count == 6 {
case numberDrawn.count == myLottoNumbers.count:
    print("축하합니다! 겹치는 번호는 1, 2, 3, 4, 5, 6 입니다!")
default:
    print("아쉽지만 겹치는 번호가 없습니다.")
}

print(numberDrawn)




//: [Next](@next)
