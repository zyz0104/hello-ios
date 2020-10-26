//
//  EmojiMemoryGame.swift
//  HelloWorld
//
//  Created by Eshine on 10/1/20.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "🍬", "🧙🏻‍♀️"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    // MARK: - Acccess to the Model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
