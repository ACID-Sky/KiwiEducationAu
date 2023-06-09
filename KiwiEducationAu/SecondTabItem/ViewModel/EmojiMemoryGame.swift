//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Лёха Небесный on 05.06.2023.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    var topic: TopicItems

    @Published private var model: MemoryGame<String> // = EmojiMemoryGame.createMemoryGame()

    init(for topic: TopicItems) {
        self.topic = topic
        self.model = EmojiMemoryGame.createMemoryGame(for: topic)
    }

    private static func createEmojis(for topic: TopicItems) -> [String] {
        let emojis: [String]

        switch topic {
        case .about:
            emojis = ["🌏","☀️","🏄🏽","🧘🏻‍♂️","🏖️","🇦🇺","🦘","🕷️","🐍"]
        case .immigration:
            emojis = ["👩🏻‍🎓","🧑🏾‍🚒","👨‍👩‍👧‍👦","🧳","🌏","🚗","🛬","🪪","💵"]
        case .education:
            emojis = ["👨🏻‍🏫","👩🏻‍🎓","📆","📚","📝","👩🏼‍💻","🏬","🔭","📇"]
        case .work:
            emojis = ["👮🏻‍♂️","👩🏼‍⚕️","👨🏽‍🌾","🧑🏽‍🍳","👨🏾‍💻","👩🏼‍🎨","🧑🏾‍🚒","🧑🏻‍✈️","👩🏿‍🚀"]
        }
        return emojis
    }

    private static func createMemoryGame(for topic: TopicItems) -> MemoryGame<String> {
        let emojis = createEmojis(for: topic)
        return MemoryGame(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }

    // MARK: — Access to the Model:

    var cards: [MemoryGame<String>.Card] {
        model.cards
        }

    // MARK: - Intent(s)

    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }

    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame(for: self.topic)
    }

    func replaceEmojis(for topic: TopicItems) {
        self.topic = topic
        resetGame()
    }
}
