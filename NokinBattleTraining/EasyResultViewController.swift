//
//  EasyResultViewController.swift
//  NokinBattleTraining
//
//  Created by 野口晃 on 2020/07/23.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class EasyResultViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
 

//    ,UITableViewDataSource, UITableViewDelegate
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var resultTableList: UITableView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var topButton: UIButton!
    
    var trainingEasyResultMenuTime:[String] = []

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        topButton.layer.cornerRadius = 10.0
        backButton.layer.cornerRadius = 10.0

    }
    // テーブルの行数を指定するメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trainingEasyResultMenuTime.count
    }

    
    // ④セルの中身を設定するメソッド（必須）
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          // セルを取得する
          let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "resultcell", for: indexPath)
          // セルに値を設定する
          cell.textLabel!.text = trainingEasyResultMenuTime[indexPath.row]
          return cell
      }
    
    
    
    
    
    
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func top(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)

        
    }
    
    
    
    
    

}
