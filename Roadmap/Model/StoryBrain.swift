//
//  StoryBrain.swift
//  Roadmap
//
//  Created by Misan Etchie on 05/12/2022.
//

import Foundation

struct Story : Identifiable{
    let id = UUID()
    let bg: String
    let type: String
    let image: String
    let speaker: String
    let title: String
    let multipleOption: Bool
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
}

struct StoryBrain {
    static let all: [Story] = [
        
        Story(bg: "bg1", type: "TypeOneCard", image: "", speaker: "", title: "Your car has broken down on a winding road in the middle of nowhere with no cell phone reception", multipleOption: false, choice1: "Next", choice1Destination: 1, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg1", type: "TypeTwoCard", image: "Shocked", speaker: "", title: "#$%@!, Not again", multipleOption: true, choice1: "Give Up", choice1Destination: 3, choice2: "Continue fixing it", choice2Destination: 2),
        
        Story(bg: "bg1", type: "TypeOneCard", image: "Shocked", speaker: "", title: "Your car once again seems not to start. After a Growling sound, you realize it's no use", multipleOption: false, choice1: "Next", choice1Destination: 3, choice2: "", choice2Destination: 0),
        
        Story(
            bg: "bg1",
            type: "TypeOneCard",
            image:  "", speaker: "",
            title: "Realizing your car won't start anytime soon, you decide to hitchhike \n \nAfter just a few minutes, a seemingly drunk couple in a green toyota pulls up", multipleOption: false,
                    choice1: "Next", choice1Destination: 4,
                    choice2: "", choice2Destination: 0
                ),
        
        Story(bg: "bg1", type: "TypeTwoCard", image: "Happy", speaker: "", title: "Yes!", multipleOption: false, choice1: "Next", choice1Destination: 5, choice2: "", choice2Destination: 2),
        
        
        
        
        
        
        
        //5-9
        
        Story(bg: "bg1", type: "TypeThreeCard", image: "StrangeWoman", speaker: "Strange Woman", title: "What is someone like you doing out here alone? \n \n They're a lot of bad people out here... murderers and all", multipleOption: false, choice1: "Next", choice1Destination: 6, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg1", type: "TypeThreeCard", image: "StrangeMan", speaker: "Strange Man", title: "Dawg, you better find a way out of here before dark", multipleOption: true, choice1: "Ignore them", choice1Destination: 7, choice2: "See if he can be of any help", choice2Destination: 9),
        
        Story(bg: "bg1", type: "TypeTwoCard", image: "Shocked", speaker: "", title: "...", multipleOption: false, choice1: "Next", choice1Destination: 8, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg1", type: "TypeThreeCard", image: "StrangeWoman", speaker: "Strange Woman", title: "Rude!", multipleOption: false, choice1: "Next", choice1Destination: 10, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg1", type: "TypeTwoCard", image: "", speaker: "", title: "Can I get a ride to the nearest town?", multipleOption: false, choice1: "Next", choice1Destination: 11, choice2: "", choice2Destination: 0),
        
        
        
        
        
        
        //10-14
        Story(bg: "bg1", type: "TypeThreeCard", image: "StrangeMan", speaker: "Strange Man", title: "Soothe yourself", multipleOption: false, choice1: "Next", choice1Destination: 13, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg1", type: "TypeThreeCard", image: "StrangeMan", speaker: "Strange Man", title: "Hell naw! How do I know you're not one of them? Can't risk that", multipleOption: false, choice1: "Next", choice1Destination: 12, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg1", type: "TypeThreeCard", image: "StrangeWoman", speaker: "Strange Woman", title: "HAHAHAHAHA", multipleOption: false, choice1: "Next", choice1Destination: 13, choice2: "", choice2Destination: 0),
        
        Story(
            bg: "bg1",
            type: "TypeOneCard",
            image:  "", speaker: "",
            title: "They zoom off, with his warning ringing in your head", multipleOption: false,
                    choice1: "Next", choice1Destination: 14,
                    choice2: "", choice2Destination: 0
                ),
        
        Story(
            bg: "bg1",
            type: "TypeOneCard",
            image:  "", speaker: "",
            title: "After what seems like an eternity and a million cars later, a rusty pickup truck rumbles to a stop next to you. \n \nA man with a wide brimmed hat with soulless eyes opens the passenger door for you", multipleOption: false,
                    choice1: "Next", choice1Destination: 15,
                    choice2: "", choice2Destination: 0
                ),
        
        
        
        
        
        //15-19
        Story(bg: "bg1", type: "TypeTwoCard", image: "Happy", speaker: "", title: "Finally!", multipleOption: false, choice1: "Next", choice1Destination: 16, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg1", type: "TypeThreeCard", image: "OM", speaker: "Old Man", title: "Need a ride?", multipleOption: true, choice1: "I'll hop in. Thanks for the help!", choice1Destination: 19, choice2: "Better ask him if he's a murderer first.", choice2Destination: 17),
        
        Story(bg: "bg1", type: "TypeTwoCard", image: "Happy", speaker: "", title: "You're into murdering people, are you? \n \n[nervous laugh]", multipleOption: false, choice1: "Next", choice1Destination: 18, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg1", type: "TypeThreeCard", image: "OM", speaker: "Old Man", title: "Yes, you must be a psychic or something!", multipleOption: true, choice1: "At least he's honest. I'll climb in.", choice1Destination: 19, choice2: "Nah, I'm good", choice2Destination: 20),
        
        Story(bg: "bg2", type: "TypeTwoCard", image: "", speaker: "", title: "Thanks!", multipleOption: false, choice1: "Next", choice1Destination: 21, choice2: "", choice2Destination: 2),
        
        
        
        
        
        //20-24
        Story(bg: "bg1", type: "TypeOneCard", image: "", speaker: "", title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", multipleOption: false, choice1: "THE END", choice1Destination: 0, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg2", type: "TypeOneCard", image: "", speaker: "", title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute", multipleOption: false, choice1: "Next", choice1Destination: 22, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg2", type: "TypeThreeCard", image: "OM", speaker: "Old Man", title: "We should lighten up the mood, I have Taylor Swift's Midnight Album Cassette in there", multipleOption: false, choice1: "Sure thing!", choice1Destination: 23, choice2: "", choice2Destination: 0),
        
        Story(
            bg: "bg2",
            type: "TypeOneCard",
            image:  "", speaker: "",
            title: " Inside you find a bloody knife, two severed fingers, and a cassette tape of Taylor Swift. He reaches for the glove box.", multipleOption: false,
                    choice1: "Next", choice1Destination: 24,
                    choice2: "", choice2Destination: 0
                ),
        
        Story(bg: "bg2", type: "TypeThreeCard", image: "OM", speaker: "Old Man", title: "...", multipleOption: true, choice1: "I love Taylor Swift! Hand him the cassette tape.", choice1Destination: 25, choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 32),
        
        
        
        
        //25-31
        Story(bg: "bg2", type: "TypeOneCard", image: "", speaker: "", title: "You bond with the murderer while crooning verses of 'Midnight Rain'.", multipleOption: false, choice1: "Next", choice1Destination: 26, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg3", type: "TypeOneCard", image: "", speaker: "", title: "He drops you off at the next town. Before you go he turns to you", multipleOption: false, choice1: "Next", choice1Destination: 27, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg3", type: "TypeThreeCard", image: "OMSmirk", speaker: "Old Man", title: "Do you know any good places to dump bodies?", multipleOption: false, choice1: "Next", choice1Destination: 28, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg3", type: "TypeTwoCard", image: "", speaker: "", title: "Try the pier", multipleOption: false, choice1: "Next", choice1Destination: 29, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg3", type: "TypeThreeCard", image: "OMSmirk", speaker: "Old Man", title: "Thanks!", multipleOption: false, choice1: "Next", choice1Destination: 30, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg3", type: "TypeThreeCard", image: "OMSmirk", speaker: "Old Man", title: "You're one of the lucky ones", multipleOption: false, choice1: "Next", choice1Destination: 31, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg3", type: "TypeOneCard", image: "", speaker: "", title: "He zooms off", multipleOption: false, choice1: "THE END", choice1Destination: 0, choice2: "", choice2Destination: 0),
        
        
        
        
        
        //32-34
        Story(bg: "bg2", type: "TypeOneCard", image: "", speaker: "", title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", multipleOption: false, choice1: "next", choice1Destination: 33, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg2", type: "TypeTwoCard", image: "Shocked", speaker: "", title: "Well that was stupid...", multipleOption: false, choice1: "Next", choice1Destination: 34, choice2: "", choice2Destination: 0),
        
        Story(bg: "bg2", type: "TypeOneCard", image: "", speaker: "", title: "You crash into rocks and go unconscious", multipleOption: false, choice1: "THE END", choice1Destination: 0, choice2: "", choice2Destination: 0),

 ]
}

