//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by Jack Lee on 2023/05/25.
//

import Foundation

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
//let myLottoNumbers: Dictionary<String, [Int]> = ["1회차": [1, 2, 3, 4, 5, 6]]
// dictionary는 <,> =. [:]으로 선언이 된다
var numberDrawn: Set<Int> = []


func generateLotto() -> Set<Int> {
    repeat {
        let pickedNumber = Int.random(in: 1...45)
        numberDrawn.insert(pickedNumber)
    } while numberDrawn.count != myLottoNumbers.count
    return numberDrawn
}


//func checkWinner() {
//    let matchingNumbers = myLottoNumbers.intersection(numberDrawn)
//    if matchingNumbers.count == 0 {
//        print("아쉽지만 겹치는 번호가 없습니다.")
//    } else {
//        let matchingNumber = matchingNumbers.sorted()
//            .map{String($0)}.joined(separator: ", ")
//        print("축하합니다! 겹치는 번호는 \(matchingNumber) 입니다!")
//    }
//}

func savePreviousWinners(andFind previousDraws: Int?) {
    var saveWinners = [Int: Any]()
    guard let previousDraws = previousDraws else { return }
    for draw in 1...previousDraws {
        
        generateLotto()
        let newNumber: [Int] = Array(numberDrawn)
//        saveWinners[draw] = newNumber
//        let oldValue = saveWinners.updateValue(newNumber, forKey: draw)
        print(newNumber)
    }
    print(saveWinners.keys)
}

savePreviousWinners(andFind: 20)


//MARK: - 1차 try
//func savePreviousWinners(andFind previousDraws: Int?) {
//    var saveWinners = [Int: Any]()
//    // 대입하는 값이 무조건 있도록 확인 ->
/////    🙋🏻‍♂️ 여기서 else { return }이 되는 이유는?? nil이나 break 같은 키워드로 중단을 시켜야하는 거 아닌가?
/////    return을 한다고 하면 코드 상에서 어떤 흐름으로 넘어가는지?
//    guard let previousDraws = previousDraws else { return }
//    // 대입 값이 있을 경우, x만큼 번호를 뽑고 saveWinner에 값을 담을 수 있도록 ->
//    for draw in 1...previousDraws {
////        while draw != previousDraws { → 이 친구들은 절대 벗어나질 못하잖아
//
//            // 번호 생성 ->
//            generateLotto()
//            let newNumber = numberDrawn
//            saveWinners[draw] = newNumber
//            //        for (draws, numbers) in saveWinners {
//            //            print(draws, numbers)
//            //        }
//
//            //            let sortedWinners = saveWinners.sorted(){ (first, second ) in
//            //                return first.key < second.key }
//
//    }
//    print(saveWinners.keys)
//}
//
//savePreviousWinners(andFind: 3)
