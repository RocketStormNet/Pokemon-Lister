//
//  PokemonList.swift
//  Pokemon Lister
//
//  Created by Artur Shamsutdinov on 25.12.2019.
//  Copyright © 2019 Artur Shamsutdinov. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
    var body: some View {
        NavigationView {
            List(pokemons) {
                pokemon in
                NavigationLink(destination: PokemonDetail(pokemon: pokemon)) {
                    PokemonRow(pokemon: pokemon).frame(height: 50)
                }
            }.navigationBarTitle(Text("Pokemon List"))
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
