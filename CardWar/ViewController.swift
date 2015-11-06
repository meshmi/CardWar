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
        firstCardImageView.image = UIImage(named: "card1")
    }
}

