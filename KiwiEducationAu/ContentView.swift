//
//  ContentView.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(wrappedValue: true, "titleOn") var titleOn
    @AppStorage(wrappedValue: 40.0, "rowHeight") var rowHeight
    
    @State private var selectedTopic: TopicItems = .about

    let game = EmojiMemoryGame(for: .about)

    var body: some View {
        TabView() {
            NavigationView {
                InfoView(article: posts, titleOn: titleOn, rowHeight: rowHeight, secondTabItem: $selectedTopic)

            }
                .tabItem {
                    Label("Статьи", systemImage: "info.circle")
                }

            EmojiMemoryGameView(viewModel: game)
                .tabItem {
                    Label("Emojis Game", systemImage: "rectangle.on.rectangle.circle.fill")
                }

            SettingsView(titleOn: $titleOn, rowHeight: $rowHeight)
                .tabItem {
                    Label("Settings", systemImage: "gear.circle.fill")
                }
        }

    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
