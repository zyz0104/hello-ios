//
//  EmojiMemoryGameView.swift
//  HelloWorld
//
//  Created by Eshine on 9/30/20.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        return HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white).aspectRatio(2/3, contentMode: .fit)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth).aspectRatio(2/3, contentMode: .fit)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: cornerRadius).fill().aspectRatio(2/3, contentMode: .fit)
            }
        }
        .font(Font.system(size: fontSize(for: size)))
        //TODO: to be removed after font change lecture, cards.count/2<5 ? Font.largeTitle : Font.body
    }
    
    
    // MARK: - Drawing Constants
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.75
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
