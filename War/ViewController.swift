//
//  ViewController.swift
//  War
//
//  Created by Cami on 9/3/15.
//  Copyright (c) 2015 Camille Diez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    var cardNamesArray = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        var firstRandomNumber = Int(arc4random_uniform(13))
        var secondRandomNumber = Int(arc4random_uniform(13))
        
        // Displays card images
        self.firstCardImageView.image = UIImage(named: self.cardNamesArray[firstRandomNumber])
        self.secondCardImageView.image = UIImage(named: self.cardNamesArray[secondRandomNumber])
        
        
        
        if firstRandomNumber > secondRandomNumber {
            playerScoreTotal += 1
            self.playerScore.text = String(self.playerScoreTotal)
        } else if firstRandomNumber == secondRandomNumber{
            // nothing
        } else {
            enemyScoreTotal += 1
            self.enemyScore.text = String(self.enemyScoreTotal)
        }
    }

}

