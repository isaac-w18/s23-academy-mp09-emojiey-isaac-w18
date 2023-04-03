//
//  Emoji.swift
//  Emojiey
//
//  Created by Isaac Frank on 3/29/23.
//

//import Foundation
//
//struct Emoji: Hashable, Codable {
//     let emoji: String
//     let description: String
//     let category: String
//     let aliases: [String]
//     let tags: [String]
//     let unicode_version: Double
//     let ios_version: Double
//}




// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - WelcomeElement
struct Emoji: Codable, Hashable {
    let emoji, description: String
    let category: Category
    let aliases, tags: [String]
    let unicodeVersion: UnicodeVersion
    let iosVersion: String
    let skinTones: Bool?

    enum CodingKeys: String, CodingKey {
        case emoji, description, category, aliases, tags
        case unicodeVersion = "unicode_version"
        case iosVersion = "ios_version"
        case skinTones = "skin_tones"
    }
}

enum Category: String, Codable {
    case activities = "Activities"
    case animalsNature = "Animals & Nature"
    case flags = "Flags"
    case foodDrink = "Food & Drink"
    case objects = "Objects"
    case peopleBody = "People & Body"
    case smileysEmotion = "Smileys & Emotion"
    case symbols = "Symbols"
    case travelPlaces = "Travel & Places"
}

enum UnicodeVersion: String, Codable {
    case empty = ""
    case the110 = "11.0"
    case the120 = "12.0"
    case the121 = "12.1"
    case the130 = "13.0"
    case the131 = "13.1"
    case the140 = "14.0"
    case the150 = "15.0"
    case the30 = "3.0"
    case the32 = "3.2"
    case the40 = "4.0"
    case the41 = "4.1"
    case the51 = "5.1"
    case the52 = "5.2"
    case the60 = "6.0"
    case the61 = "6.1"
    case the70 = "7.0"
    case the80 = "8.0"
    case the90 = "9.0"
}

typealias Welcome = [Emoji]
