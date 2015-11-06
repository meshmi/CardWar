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
    override func viewDidLoad() {
        super.viewDidLoad()

        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playRoundTapped(sender: AnyObject) {

        let firstRandomNumber = arc4random_uniform(13) + 1
        let firstCardString: String = String(format: "card%i", firstRandomNumber)

        firstCardImageView.image = UIImage(named: firstCardString)

        let secondRandomNumber = arc4random_uniform(13) + 1
        let secondCardString: String = String(format: "card%i", secondRandomNumber)

        secondCardImageView.image = UIImage(named: secondCardString)
    }
}

