//
//  LetterButtonView.swift
//  Wordle
//
//  Created by Caitlin Estrada on 4/21/24.
//

import SwiftUI

struct LetterButtonView: View {
    @EnvironmentObject var dm: WordleDataModel
    var letter: String
    var body: some View {
        Button {
            dm.addToCurrentWord(letter)
        } label: {
            Text(letter)
                .font(.system(size: 20))
                .frame(width: 35, height: 50)
                .background(dm.keyColors[letter])
                .foregroundColor(.primary)
        }
        .buttonStyle(.plain)
        .onAppear {
            print(letter)
            print(dm.keyColors[letter])
        }
    }
}

struct LetterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LetterButtonView(letter: "L")
            .environmentObject(WordleDataModel())
            .scaleEffect(Global.keyboardScale)
    }
}
