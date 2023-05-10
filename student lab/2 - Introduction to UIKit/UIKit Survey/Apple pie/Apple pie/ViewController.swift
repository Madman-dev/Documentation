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
    var totalWins = 0
    var totalLosses = 0
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
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, numberOfTurns: incorrectMovesAllowed, guessedLetters: [])     /// 아예 새롭게 받아야 하니까 guessedLetter는 [] 비어두는 것
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.numberOfTurns)")   // 오... 이렇게도 이미지 즉각 변경이 가능해?
        correctWordLabel.text = currentGame.formattedWord   // 여기서 접근하는게 이렇게 되는거구나
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
//        listOfWords.first?.contains(sender!)
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())   // 오... 신기한데
        currentGame.playerGuessed(letter: letter)
        updateUI()
    }
}

