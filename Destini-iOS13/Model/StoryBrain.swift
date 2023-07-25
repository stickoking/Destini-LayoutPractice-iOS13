//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct StoryBrain {
    let stories: [Story] = Story.stories
    var level: Int = 0
    var story: Story = Story(title: "", choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0)
    
    mutating func processChoice(_ choice: String = "") -> Story {
        switch choice {
        case story.choice1:
            level = story.choice1Destination
            story = stories[level]
        case story.choice2:
            level = story.choice2Destination
            story = stories[level]
        default:
            return story
        }
        
        return story
    }
}

