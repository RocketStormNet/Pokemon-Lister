//
//  PokemonRow.swift
//  Pokemon Lister
//
//  Created by Artur Shamsutdinov on 25.12.2019.
//  Copyright © 2019 Artur Shamsutdinov. All rights reserved.
//

import SwiftUI

struct PokemonRow: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        HStack {
            Image(pokemon.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle().foregroundColor(pokemon.type.color))
            Text(pokemon.name).font(.largeTitle)
            Spacer()
        }
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(pokemon: pokemons[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
