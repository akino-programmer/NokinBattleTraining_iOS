//
//  EasyViewController.swift
//  NokinBattleTraining
//
//  Created by 野口晃 on 2020/07/23.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class EasyViewController: UIViewController {

    var count = 5
    
    let maxHp = Int.random(in: 30 ..< 50) //0から9までで整数(Int)の乱数
    
    @IBOutlet weak var monsterMaxHp: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
      
    }
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! EasyResultViewController
        
        nextVC.count2 = count
        
        
        
        
    }
 
    
}
