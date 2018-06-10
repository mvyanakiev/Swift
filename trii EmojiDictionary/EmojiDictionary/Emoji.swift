//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Milko Yanakiev on 26.05.18 г..
//  Copyright © 2018 г. Tra la la. All rights reserved.
//

import Foundation

class Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String,
         usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
