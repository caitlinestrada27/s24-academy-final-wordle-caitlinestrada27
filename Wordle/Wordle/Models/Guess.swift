//
//  Guess.swift
//  Wordle
//
//  Created by Caitlin Estrada on 4/21/24.
//

import SwiftUI

struct Guess {
    let index: Int
    var word = "     "
    var bgColors = [Color](repeating: Color("wrong"), count: 5)
    var cardFlipped = [Bool](repeating: false, count: 5)
    var guessLetters: [String] {
        word.map { String($0) }
    }
}
