//
//  ViewController.swift
//  CardMatching
//
//  Created by Seth Watson on 12/3/18.
//  Copyright © 2018 Seth Watson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🎄", on: sender)
    }
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🎁", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.6762928367, green: 0.1193955019, blue: 0.04112524539, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

