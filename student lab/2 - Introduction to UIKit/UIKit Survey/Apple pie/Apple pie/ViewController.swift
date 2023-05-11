//
//  ViewController.swift
//  Apple Pie
//
//  Created by Jack Lee on 2023/05/10.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer", "swift", "naver", "program", "coding"]
    let incorrectMovesAllowed = 7
    /// wins이 바뀌면 newRound()를 시작하도록?
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    /// !을 사용해도 되나?
    var currentGame: Game!

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, numberOfTurns: incorrectMovesAllowed, guessedLetters: [])     /// 아예 새롭게 받아야 하니까 guessedLetter는 [] 비어두는 것
            updateUI()
            enableAllButtons(true)
        } else {
            /// 아래가 왜 false이지? >>> 새로운 라운드를 시작하는데 - button을 비활성화 할 수 없지~ 새로운 라운드를 시작할 때 값이 없다면 button을 꺼라~ 이런 구성
            enableAllButtons(false)
        }
    }
    
    /// 나무 이미지 변경 + 횟수 변경
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.numberOfTurns)")   // 오... 이렇게도 이미지 즉각 변경이 가능해?
        
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))  /// letter은 여전히 Character
        }
        let spacedWords = letters.joined(separator: " ")
        correctWordLabel.text = spacedWords
        
        
        /// 생각했던 것보다 모델 데이터에서 직접적인 변화를 주는 건 없구나
        //        correctWordLabel.text = currentGame.formattedWord   // 여기서 접근하는게 이렇게 되는거구나
//        let letters: [String]   /// 이 방식은 안되네 - : [String] 타입으로 지정을 하게 되면 initialize를 해야하니까
//        for word in currentGame.formattedWord {
//            letters.append(String(word))
//        }
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
///        listOfWords.first?.contains(sender!) >> 데이터 값을 뽑아쓰는건 Game 파일에서 실행
        let letterString = sender.title(for: .normal)!
        /// 전달 받은 알파벳을 모두 소문자
        let letter = Character(letterString.lowercased())   // 오... 신기한데
        currentGame.playerGuessed(letter: letter)
//        updateUI()
        updateGameState()
    }
    
    /// 🙋🏻‍♂️ 계속 업데이트가 win에만 발생하길래 무슨 문제가 있는건가 했는데 - 현재 게임 상황으로 확인을 한게 아니였구나 currentGame.numberOfTurns, NOT incorrectMovesAllowed
    func updateGameState() {
        if currentGame.numberOfTurns == 0 {
            totalLosses += 1
//            updateUI()
            //newRound() >> 여기에서 newRound를 호출하는게 아니네
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
//            updateUI()
            //newRound() >> 여기에서 newRound를 호출하는게 아니네
        } else {
            updateUI()
        }
    }

    /// 버튼 값 눌릴 수 있게 선언 >>> 이건 몰랐네.. 🙋🏻‍♂️
    /// True면 enable을 하는거고 - 아니면 false를 돌리는거네
    func enableAllButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = true
        }
    }
}
