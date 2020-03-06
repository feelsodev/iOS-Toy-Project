//
//  ViewController.swift
//  Dice
//
//  Created by once on 06/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        diceImageView1.image = #imageLiteral(resourceName: "diceSix")
//        diceImageView2.image = #imageLiteral(resourceName: "diceTwo")
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton){
        print("current pressd button! ")
        
        diceImageView1.image = [#imageLiteral(resourceName: "diceOne"), #imageLiteral(resourceName: "diceTwo"), #imageLiteral(resourceName: "diceThree"),#imageLiteral(resourceName: "diceFour"),#imageLiteral(resourceName: "diceFive"),#imageLiteral(resourceName: "diceSix")][leftDiceNumber]
        diceImageView2.image = [#imageLiteral(resourceName: "diceOne"), #imageLiteral(resourceName: "diceTwo"), #imageLiteral(resourceName: "diceThree"),#imageLiteral(resourceName: "diceFour"),#imageLiteral(resourceName: "diceFive"),#imageLiteral(resourceName: "diceSix")][rightDiceNumber]
        
//        diceImageView2.image = #imageLiteral(resourceName: "diceFive")
        
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
        
    }
}

