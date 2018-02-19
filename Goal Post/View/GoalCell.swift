//
//  GoalCell.swift
//  Goal Post
//
//  Created by Vinoth Vino on 19/02/18.
//  Copyright © 2018 Coder Earth. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description: String, type: String, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl = type
        self.goalProgressLbl = String(describing: goalProgressAmount)
    }
}
