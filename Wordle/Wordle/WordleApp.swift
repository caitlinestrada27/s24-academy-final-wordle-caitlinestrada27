//
//  WordleApp.swift
//  Wordle
//
//  Created by Caitlin Estrada on 4/21/24.
//

import SwiftUI

@main
struct WordleApp: App {
    @StateObject var dm = WordleDataModel()
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
        }
    }
}
