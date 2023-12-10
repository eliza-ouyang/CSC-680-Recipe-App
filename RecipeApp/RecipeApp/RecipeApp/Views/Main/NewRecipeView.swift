//
//  NewRecipeView.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/1/23.
//

import SwiftUI

struct NewRecipeView: View {
    
    @State
    private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button("Add new recipe") {
                showAddRecipe = true
            }
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
