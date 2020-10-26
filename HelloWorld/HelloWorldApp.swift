//
//  HelloWorldApp.swift
//  HelloWorld
//
//  Created by Eshine on 9/30/20.
//

import SwiftUI

@main
struct HelloWorldApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}

struct HelloWorldApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
