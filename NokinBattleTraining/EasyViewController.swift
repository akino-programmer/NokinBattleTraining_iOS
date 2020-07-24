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
    
    var playTrainingTimes:[Int] = []
    
    var secondRemainHp = 0
    
    @IBOutlet weak var traningName: UILabel!
    
    @IBOutlet weak var monsterMaxHp: UILabel!
    
    @IBOutlet weak var monsterRemainHp: UILabel!
    
    @IBOutlet weak var traningTimes: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      

        
      
    }
    
    
    @IBAction func trainingStart(_ sender: Any) {
        
        let randomTraningTimes = Int.random(in: 10 ..< 20) //10から20までで整数(Int)の乱数
        
        if (monsterRemainHp.text == "ー"){
            
         monsterMaxHp.text = String(maxHp)
         monsterRemainHp.text = String(maxHp)
        
        } else {
            
            secondRemainHp = Int(monsterRemainHp.text!)! - (playTrainingTimes.last!)
            
            monsterRemainHp.text = String(secondRemainHp)
            
        }
        
        //トレーニング回数を配列に保存
        playTrainingTimes.append(randomTraningTimes)
        
        
        print(playTrainingTimes)
        
        //トレーニング回数を表示
        traningTimes.text = String(randomTraningTimes)
        
        
        
        
        
        //トレーニングメニュー配列からランダムに取り出す
        let traningMenus = ["腕立て伏せ", "腹筋", "スクワット", "懸垂"]
        let randomTraningMenu = traningMenus.randomElement()
        
        traningName.text = String(randomTraningMenu!)

        

        
        
        
    }
    
    
    
    
    
    
    
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! EasyResultViewController
        
        nextVC.count2 = count
        
        
        
        
    }
 
    
}
