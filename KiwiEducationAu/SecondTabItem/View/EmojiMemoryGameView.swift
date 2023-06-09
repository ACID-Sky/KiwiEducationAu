//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Лёха Небесный on 05.06.2023.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame

    var body: some View {
        VStack {
            Grid(viewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        withAnimation(.linear(duration: 0.75)) {
                            self.viewModel.choose(card: card)
                        }
                    }
                    .padding(5)
            }
            .padding()
            .foregroundColor(Color.orange)

            Button {
                withAnimation(.easeIn) {
                    self.viewModel.resetGame()
                }
            } label: {
                Text("New Game")
            }

        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
//    }
//}


