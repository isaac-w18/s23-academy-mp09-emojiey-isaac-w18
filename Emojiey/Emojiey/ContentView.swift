//
//  ContentView.swift
//  Emojiey
//
//  Created by Isaac Frank on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = EmojiList(emojiList: EmojiListService().getEmojiListFromJSON() ?? [])
    @State private var searchText = ""
    
    var searchedEmojis: [Emoji] {
        if searchText.isEmpty {
            return emojis.emojiList
        } else {
            return emojis.emojiList.filter { $0.tags.contains(where: {$0.contains(searchText)}) || $0.description.contains(searchText) || $0.aliases.contains(where: {$0.contains(searchText)})}
        }
    }
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(searchedEmojis, id: \.self) { item in
                        NavigationLink {
                            EmojiDetailView(emoji: item)
                        } label: {
                            Text(item.emoji)
                                .font(.title)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
            .navigationTitle("Emojiey")
        }
        .searchable(text: $searchText)
        .autocapitalization(.none)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
//            emojis: EmojiListService().getEmojiListFromJSON() ?? EmojiList(emojiList: [Emoji(emoji: "😀", description: "grinning face", category: "Smileys & Emotion", aliases: [
//            "grinning"
//          ], tags: [
//            "smile"
//          , "happy"
//          ], unicode_version: 6.1, ios_version: 6.0)])
        )
    }
}
