//
//  ViewController.swift
//  login Screen
//
//  Created by Jack Lee on 2023/05/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = usernameTextField.text
        
        
        // 개인 생각 1
///        navigationItem.title = usernameTextField.text

        
        // button이 추가되면서 생긴 options
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot UserName"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernamePassword", sender: sender)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernamePassword", sender: sender)
    }
}


/// 선택적으로 실행하고 싶은 경우 이렇게 짤 수 있다는 점 ⭐️
/// performSegue는 무엇인가
/// prepare는 무엇인가
