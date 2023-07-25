//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    let story0: String = "You see a fork in the road."
    let choice1: String = "Take a left."
    let choice2: String = "Take a right."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story0
        choiceOne.setTitle(choice1, for: .normal)
        choiceTwo.setTitle(choice2, for: .normal)

    }

    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
}

