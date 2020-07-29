//
//  ViewController.swift
//  NokinBattleTraining
//
//  Created by 野口晃 on 2020/07/23.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var easyButton: UIButton!
    
    @IBOutlet weak var normalButton: UIButton!
    
    @IBOutlet weak var hardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        easyButton.layer.cornerRadius = 10.0
        normalButton.layer.cornerRadius = 10.0
        hardButton.layer.cornerRadius = 10.0
    }


}

