//
//  ViewController.swift
//  Segue
//
//  Created by Jack Lee on 2023/05/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // 여기서 여러 segue로 viewController들을 연결했음에도 불구하고 최초 scene으로 돌아오는 이유는
    // UIViewController로 연결해두지 않았기에 input값인 UIStoryBoardSegue는 해당 화면에 올려진 모든 segue를 뜻함
    // 최초 화면에서 modally하게 등장했기에 완전히 새로운 화면이라고 볼 수 없기 때문에 여전히 red viewcontroller위에 있는 것과 동일.
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }

}

