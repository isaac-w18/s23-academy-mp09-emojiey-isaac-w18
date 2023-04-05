//
//  EmojiDetailView.swift
//  Emojiey
//
//  Created by Isaac Frank on 4/4/23.
//

import SwiftUI

struct EmojiDetailView: View {
    let emoji: Emoji
    
    var body: some View {
        List {
            Section {
                Text(emoji.emoji.capitalized)
                    .font(.custom("San Francisco", size: 120))
                    .frame(maxWidth: .infinity, alignment: .center)
            } header: {
                Text("Emoji")
            }
            
            Section {
                VStack(alignment: .leading) {
                    Text(emoji.description.capitalized)
                        .font(.title3)
                        .bold()
                    HStack {
                        Text("Category: ").bold()
                        Text(emoji.category.rawValue)
                    }
                    HStack {
                        Text("Unicode Version: ").bold()
                        Text(emoji.unicodeVersion.rawValue)
                    }
                    HStack {
                        Text("iOS Version: ").bold()
                        Text(emoji.iosVersion)
                    }
                }
            } header: {
                Text("Details")
            }
        }
    }
}

//struct EmojiDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmojiDetailView(emoji: Emoji(emoji: <#T##String#>, description: <#T##String#>, category: <#T##Category#>, aliases: <#T##[String]#>, tags: <#T##[String]#>, unicodeVersion: <#T##UnicodeVersion#>, iosVersion: <#T##String#>, skinTones: <#T##Bool?#>))
//    }
//}
