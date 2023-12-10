//
//  NavBar.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/1/23.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
            .environmentObject(RecipesViewModel())
    }
}
