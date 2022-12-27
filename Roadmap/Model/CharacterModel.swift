//
//  CharacterModel.swift
//  Roadmap
//
//  Created by Misan Etchie on 04/12/2022.
//

import Foundation

struct Character: Identifiable{
    let id = UUID()
    let image: String
}


extension Character {
    static let all: [Character] = [
        Character (image: "BW"),
        Character (image: "LM"),
        Character (image: "AW"),
        Character (image: "WW"),
        Character (image: "BM"),
        Character (image: "AM"),
        Character (image: "WM"),
        Character (image: "LW"),
    ]
}
