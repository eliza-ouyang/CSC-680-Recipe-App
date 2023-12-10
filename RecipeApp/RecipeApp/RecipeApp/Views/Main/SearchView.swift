//
//  SearchView.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/5/23.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                SearchBar(text: $searchText)
                //RecipeList(recipes: recipesViewModel.recipes)
                
                ForEach(filteredRecipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                }

            }
            .navigationTitle("Search")
        }
        .navigationViewStyle(.stack)
    }
    
    var filteredRecipes: [Recipe] {
        if searchText.isEmpty {
            print("no search")
            return recipesViewModel.recipes
        } else {
            print("search entered")
            return recipesViewModel.recipes.filter{ recipe in
                recipe.name.range(of: searchText, options: .caseInsensitive) != nil
            }
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    var body: some View {
        TextField("Search", text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
            .padding(.vertical, 8)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environmentObject(RecipesViewModel())
    }
}
