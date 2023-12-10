//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/1/23.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
