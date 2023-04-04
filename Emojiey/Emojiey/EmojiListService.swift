//
//  EmojiListService.swift
//  Emojiey
//
//  Created by Isaac Frank on 3/29/23.
//

import Foundation

class EmojiListService {
    var emojiList: EmojiList?
    
    init() {
        emojiList = getEmojiListFromJSON()
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
        
//        checking the data works
//        let str = String(decoding: data, as: UTF8.self)
//        print(str + "It worked!")
        
        guard let decoded = try? JSONDecoder().decode(EmojiList.self, from: data) else {
            print("Decoding error")
            return nil
        }
        
        print("Made it!")
        return decoded
        // ContentView prints emojis.emojiList.count
    }
}
