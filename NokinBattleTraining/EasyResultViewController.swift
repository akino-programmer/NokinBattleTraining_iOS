//
//  EasyResultViewController.swift
//  NokinBattleTraining
//
//  Created by 野口晃 on 2020/07/23.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class EasyResultViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var count2 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(count2)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
