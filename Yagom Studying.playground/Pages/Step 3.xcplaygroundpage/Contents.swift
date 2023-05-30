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
//var numberDrawn: Set<Int> = [] >> 전역 변수로 설정했기 때문에 교체가 되지 않고 있었다?

func generateLotto() -> Set<Int> {
    var numberDrawn: Set<Int> = []
    
    repeat {
        let pickedNumber = Int.random(in: 1...45)
        numberDrawn.insert(pickedNumber)
//        return numberDrawn
    } while numberDrawn.count != myLottoNumbers.count
    return numberDrawn
}


func saveWinners(andFind previousDraws: Int?) {
    var saveWinners = [Int: [Int]]()
    guard let previousDraws = previousDraws else { return }
    
    for draw in 1...previousDraws {
        let numberDrawn = generateLotto() // 이렇게 해두면 어떻게 되는거지? -> 함수를 실행하고 발생하는 값을 저장할 수 있게 되는 것
        let newNumber: [Int] = Array(numberDrawn)
        saveWinners[draw] = newNumber
        
//        let oldValue = saveWinners.updateValue(newNumber, forKey: draw)
        print("\(draw)회차: \(newNumber)")
    }
//    print(saveWinners.keys)
}

saveWinners(andFind: 5)


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
