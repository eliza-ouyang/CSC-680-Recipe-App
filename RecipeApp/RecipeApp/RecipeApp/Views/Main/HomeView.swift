//
//  HomeView.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/1/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesViewModel.recipes)

            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
