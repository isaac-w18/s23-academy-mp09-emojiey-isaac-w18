//
//  Emoji.swift
//  Emojiey
//
//  Created by Isaac Frank on 3/29/23.
//

import Foundation

struct Emoji: Hashable {
     var emoji: String
     var description: String
     var category: String
     var aliases: [String]
     var tags: [String]
     var unicode_version: Double
     var ios_version: Double
}
