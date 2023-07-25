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
    var storyController: StoryBrain = StoryBrain()
    var story: Story = Story(title: "", choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        story = storyController.processChoice()
        UpdateUi()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        switch sender {
        case choiceOne:
            story = storyController.processChoice(story.choice1)
        case choiceTwo:
            story = storyController.processChoice(story.choice2)
        default:
            story = storyController.processChoice()
        }
        UpdateUi()
        
    }
    
    func UpdateUi() {
        storyLabel.text = story.title
        choiceOne.setTitle(story.choice1, for: .normal)
        choiceTwo.setTitle(story.choice2, for: .normal)
    }
}

