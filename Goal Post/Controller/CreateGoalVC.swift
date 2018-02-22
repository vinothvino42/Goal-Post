//
//  CreateGoalVC.swift
//  Goal Post
//
//  Created by Vinoth Vino on 21/02/18.
//  Copyright © 2018 Coder Earth. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    var goalType: GoalType = .shortTime
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextBtn.bindKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
        
    }
    @IBAction func shortTermBtnPressed(_ sender: Any) {
        goalType = .shortTime
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDeselectedColor()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    
}
