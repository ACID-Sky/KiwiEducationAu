//
//  CardView.swift
//  Memorize
//
//  Created by Лёха Небесный on 05.06.2023.
//

import SwiftUI

struct CardView: View {
    var card: MemoryGame<String>.Card

    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }

    @State private var animatedBonusRemaining: Double = 0

    private func startBonusTimeAnimation() {
        animatedBonusRemaining = card.bonusRemaining
        withAnimation(.linear(duration: card.bonusTimeRemaining)) {
            animatedBonusRemaining = 0
        }
    }

    @ViewBuilder
    private func body(for size: CGSize) -> some View {
        if card.isFaceUp || !card.isMatched {
            ZStack {
                Group {
                    if card.isConsumingBonusTime {
                        Pie(startAngel: Angle.degrees(0-90), endAngel: Angle.degrees(-animatedBonusRemaining*360-90), clockwise: true)
                            .onAppear {
                                self.startBonusTimeAnimation()
                            }
                    } else {
                        Pie(startAngel: Angle.degrees(0-90), endAngel: Angle.degrees(-card.bonusRemaining*360-90), clockwise: true)
                    }
                }
                .padding(5).opacity(0.4)
                .transition(.identity)

                withAnimation(card.isMatched ? Animation.linear(duration: 2) : .default) {
                    Text(card.content)

                }
                .font(Font.system(size: fontSize(for: size)))
                .rotationEffect(Angle.degrees(card.isMatched ? 360 : 0))
            }
            .cardify(isFaceUp: card.isFaceUp)
            .transition(AnyTransition.scale)
        }

    }

    // MARK: - Drawing Constants

    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) *  0.7
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(isFaceUp: true, content: "🤑", id: 1))
    }
}