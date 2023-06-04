//
//  PurpleViewController.swift
//  Rainbow Tabs
//
//  Created by Jack Lee on 2023/06/04.
//

import UIKit

class PurpleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarItem.badgeValue = nil
    }
}
