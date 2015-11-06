//
//  ViewController.swift
//  CardWar
//
//  Created by Khuong Pham on 11/6/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstCardImageView: UIImageView!
    @IBOutlet var secondCardImageView: UIImageView!
    @IBOutlet var playRoundButton: UIButton!
    @IBOutlet var player2Score: UILabel!
    @IBOutlet var player1Score: UILabel!
    var cardNamesArray:[String] = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]

    var player1ScoreValue: Int = 0
    var player2ScoreValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playRoundTapped(sender: AnyObject) {

        let firstRandomNumber: Int = Int(arc4random_uniform(13))
        let firstCardString: String = cardNamesArray[firstRandomNumber]

        firstCardImageView.image = UIImage(named: firstCardString)

        let secondRandomNumber: Int = Int(arc4random_uniform(13))
        let secondCardString: String = cardNamesArray[secondRandomNumber]

        secondCardImageView.image = UIImage(named: secondCardString)

        if firstRandomNumber > secondRandomNumber {
            player1ScoreValue += 1
            self.player1Score.text = String(player1ScoreValue)
        }
        else if firstRandomNumber < secondRandomNumber{
            player2ScoreValue += 1
            self.player2Score.text = String(player2ScoreValue)
        }
    }
}

