//
//  Emoji.swift
//  Emojiey
//
//  Created by Isaac Frank on 3/29/23.
//

import Foundation

struct Emoji: Hashable, Codable {
     let emoji: String
     let description: String
     let category: String
     let aliases: [String]
     let tags: [String]
     let unicode_version: Double
     let ios_version: Double
}
