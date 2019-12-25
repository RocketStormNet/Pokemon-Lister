//
//  ContentView.swift
//  Pokemon Lister
//
//  Created by Artur Shamsutdinov on 24.12.2019.
//  Copyright © 2019 Artur Shamsutdinov. All rights reserved.
//

import SwiftUI

struct PokemonDetail: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        VStack {
            Image(pokemon.type.imageName).resizable().aspectRatio(contentMode: .fit)
            Image(pokemon.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -40).padding(.bottom, -40).shadow(radius: 15)
            
            Text(pokemon.name).font(.system(size: 30)).fontWeight(.bold)
            
            StatText(statName: "Start Exp", statValue: "\(pokemon.baseExperience)")
            StatText(statName: "Weight", statValue: "\(pokemon.weight)")
            StatText(statName: "Height", statValue: "\(pokemon.height)")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail(pokemon: pokemons[0])
    }
}
