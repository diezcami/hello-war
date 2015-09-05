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
        self.firstCardImageView.image = UIImage(named: cardNamesArray[firstRandomNumber])
        self.secondCardImageView.image = UIImage(named: cardNamesArray[secondRandomNumber])
        
        if firstRandomNumber > secondRandomNumber {
            // TODO: First Card is Larger
        } else if firstRandomNumber == secondRandomNumber{
            // TODO: Tie
        } else {
            // TODO: Second Card is Larger
        }
    }

}

