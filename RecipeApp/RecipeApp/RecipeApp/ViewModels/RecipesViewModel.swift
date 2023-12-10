//
//  RecipesViewModel.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/1/23.
//

import Foundation

class RecipesViewModel: ObservableObject {
    
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
