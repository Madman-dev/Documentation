//
//  Game.swift
//  Apple Pie
//
//  Created by Jack Lee on 2023/05/10.
//

import Foundation

struct Game {
    var word: String
    var numberOfTurns: Int
    var guessedLetters: [Character] // 내가 예측한 알파벳 모음 - 내가 누른 알파벳
    var formattedWord: String {     // 화면에 _ 로 단어를 표시해줄 수 있도록 만든 요소?
        var guessedWord = ""        // 이건 여기 왜 있는거지? 🙋🏻‍♂️
        /// 애초에 여기서 출력되는 값을 Character 타입으로 선언하게 되는 거였구나 - String 타입에서 뽑아 쓰는걸로 이해되니까
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"  /// 이건 왜 이렇게 해야하지? >> 이게 String으로 변환을 해주는건가? >> 변환해서 넣어주네
            } else {
                guessedWord += "_"  /// 🙋🏻‍♂️ append랑 어떤 차이점이 있는거지?
                /// " _ "를 할 수도 있지만, 더 좋은 방법이 있다. + 이 문제는 인터페이스를 더 좋게 발달 시키는 것이지 데이터 값을 가지고 장난을 치는게 아니다
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {    /// 여기가 mutating인 이유는 직접 값이 변하기 때문에
        guessedLetters.append(letter)   // 게이머가 예상한 단어를 담아야하니까
        if !word.contains(letter) {     // if word에 해당 단어가 포함되어 있지 않다면!
            numberOfTurns -= 1
        }
    }
    
    
    
}
