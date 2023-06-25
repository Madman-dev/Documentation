//
//  ViewController.swift
//  Rainbow Tabs
//
//  Created by Jack Lee on 2023/06/03.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.badgeValue = "!"
        // 이 배지 적용하는 사항이 Red Screen에서만 보이네?

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // 탭을 떠나는 순간 없어지는구나 -> 지금도 Red만 구현 - orange는 다른 viewController이니까~
        tabBarItem.badgeValue = nil
    }
}

