//
//  ContentView.swift
//  Emojiey
//
//  Created by Isaac Frank on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = EmojiListService().getEmojiListFromJSON() ?? EmojiList(emojiList: [])
    
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
//        GridItem(.flexible()),
//        GridItem(.flexible())
    ]
    
    var body: some View {
        // to see if emojis has loaded
        let testPrint = print("\(emojis.emojiList.count)")
        
        // make a list of Emojis and disply using lazyVGrid
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(emojis.emojiList, id: \.self) { item in
//                    Text(item.emoji)
                    Text("HI")
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 300)
    
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(
////            emojis: EmojiListService().getEmojiListFromJSON() ?? EmojiList(emojiList: [Emoji(emoji: "😀", description: "grinning face", category: "Smileys & Emotion", aliases: [
////            "grinning"
////          ], tags: [
////            "smile"
////          , "happy"
////          ], unicode_version: 6.1, ios_version: 6.0)])
//        )
//    }
//}
