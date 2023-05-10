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
    var guessedLetters: [Character]
//    var formattedWords: String {
//        var emptyWord: String = ""
//        for letter in word {
//            if guessedLetters.contains(letter) {
//                emptyWord += "\(letter)"
//            } else {
//                emptyWord.append(letter)
//            }
//        }
//        return emptyWord
//    }
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"  /// 이건 왜 이렇게 해야하지? >> 이게 String으로 변환을 해주는건가?
            } else {
                guessedWord += "_"  /// 🙋🏻‍♂️ append랑 어떤 차이점이 있는거지?
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
