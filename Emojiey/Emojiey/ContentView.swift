//
//  ContentView.swift
//  Emojiey
//
//  Created by Isaac Frank on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: EmojiList
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        
        // make a list of Emojis and disply using lazyVGrid
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(emojis.emojiList, id: \.self) { item in
                    Text(item.emoji)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 300)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(emojis: EmojiListService().getEmojiListFromJSON() ?? EmojiList(emojiList: <#[Emoji]#>))
    }
}
