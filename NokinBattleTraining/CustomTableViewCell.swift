//
//  CustomTableViewCell.swift
//  NokinBattleTraining
//
//  Created by 野口晃 on 2020/07/25.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var resultMenuLabel: UILabel!
    
    @IBOutlet weak var resultTimeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
