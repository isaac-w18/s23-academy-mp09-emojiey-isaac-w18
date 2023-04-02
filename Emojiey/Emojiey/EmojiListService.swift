//
//  EmojiListService.swift
//  Emojiey
//
//  Created by Isaac Frank on 3/29/23.
//

import Foundation

class EmojiListService {
    var EmojiList: EmojiList?
    
    init() {
        EmojiList = getEmojiListFromJSON()
    }
    
    func getEmojiListFromJSON() -> EmojiList? {
        guard let url = Bundle.main.url(forResource: "emoji", withExtension: ".json") else {
            print("Bad url")
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            print("Bad data")
            return nil
        }
        
        let decoder = JSONDecoder()
        let decoded = try? decoder.decode(EmojiList, from: data)
        
        return decoded
    }
}
