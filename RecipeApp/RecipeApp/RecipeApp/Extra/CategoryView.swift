//
//  CategoryView.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/1/23.
//

import SwiftUI

struct CategoryView: View {
    
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    var category: Category
    
    var recipes: [Recipe] {
        return recipesViewModel.recipes.filter{$0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.main)
            .environmentObject(RecipesViewModel())
    }
}
