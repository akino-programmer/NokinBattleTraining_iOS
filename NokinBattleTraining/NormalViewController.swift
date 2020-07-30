//
//  NormalViewController.swift
//  NokinBattleTraining
//
//  Created by 野口晃 on 2020/07/23.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class NormalViewController: UIViewController {

    let maxHp = Int.random(in: 60 ..< 80) //0から9までで整数(Int)の乱数
        
        var playTrainingTimes:[Int] = []
        var playTrainingMenus:[String] = []
        
        var secondRemainHp = 0
        
    @IBOutlet weak var backButton: UIButton!
    
        @IBOutlet weak var resultButton: UIButton!
    
        @IBOutlet weak var traningName: UILabel!
        
        @IBOutlet weak var monsterMaxHp: UILabel!
        
        @IBOutlet weak var monsterRemainHp: UILabel!
        
        @IBOutlet weak var traningTimes: UILabel!
        
        
        override func viewDidLoad() {
            super.viewDidLoad()

          
            resultButton.alpha=0.3
            resultButton.isEnabled = false
            resultButton.layer.cornerRadius = 10.0
            backButton.layer.cornerRadius = 10.0
          
        }
        
        
        @IBAction func trainingStart(_ sender: Any) {
            
            let randomTraningTimes = Int.random(in: 15 ..< 20) //10から20までで整数(Int)の乱数
            
            
            if (monsterRemainHp.text == "ー"){
                //１回目のスタート
             monsterMaxHp.text = String(maxHp)
             monsterRemainHp.text = String(maxHp)
            
            } else {
                //２回目以降のスタート
                secondRemainHp = Int(monsterRemainHp.text!)! - (playTrainingTimes.last!)
                
                monsterRemainHp.text = String(secondRemainHp)
                
                if (secondRemainHp <= 0){
                    
                    monsterRemainHp.text = String(0)
                    resultButton.alpha=1
                    resultButton.isEnabled = true
                }
                
                
                
            }
            
            //行ったトレーニング回数を配列に保存
            playTrainingTimes.append(randomTraningTimes)
            
    //        print(playTrainingTimes)
            
            //トレーニング回数を画面に表示
            traningTimes.text = String(randomTraningTimes)
            
            if (monsterRemainHp.text == String(0)){
               playTrainingTimes.removeLast()
                traningTimes.text = String("WIN")

            }
            
            
            
            
            //トレーニングメニュー配列からランダムに取り出す
            let traningMenus = ["腕立て伏せ", "腹筋", "スクワット", "懸垂"]
            let randomTraningMenu = traningMenus.randomElement()
            
          
             //行ったトレーニングメニューを配列に保存
            playTrainingMenus.append(randomTraningMenu!)
            // print(playTrainingMenus)
                    
                   
                    
            //トレーニングメニューを画面に表示
            traningName.text = String(randomTraningMenu!)
            
            if (monsterRemainHp.text == String(0)){
               playTrainingMenus.removeLast()
                traningName.text = String("YOU")
            }
           

            
        }
        
        
        
        
        
        
        
        //Topへ戻る
        @IBAction func back(_ sender: Any) {
            
            dismiss(animated: true, completion: nil)
            
        }
        
        
        //リザルト画面へ遷移
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            let nextVC = segue.destination as! NormalResultViewController
            
            
            var trainingResultMenu:[String] = []
            var i = 1
            var trainingResultTime:[String] = []
            
            var trainingResultMenuTime:[String] = []
            
            for value in playTrainingMenus {
                
                trainingResultMenu.append(String(i) + ".  " + value + "：")
                i += 1
                
            }
            
            for value in playTrainingTimes {
                       
                trainingResultTime.append(String(value) + "回")
            }

            for (word, number) in zip(trainingResultMenu, trainingResultTime) {
//                print("\(word) \(number)")
                trainingResultMenuTime.append("\(word) \(number)")
            }
            
            nextVC.trainingNormalResultMenuTime = trainingResultMenuTime
           
        }
     
        
    }
