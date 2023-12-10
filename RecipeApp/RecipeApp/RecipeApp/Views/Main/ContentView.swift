//
//  ContentView.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
