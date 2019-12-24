//
//  Pokemon.swift
//  Pokemon Lister
//
//  Created by Artur Shamsutdinov on 24.12.2019.
//  Copyright © 2019 Artur Shamsutdinov. All rights reserved.
//

import Foundation
import SwiftUI

struct Pokemon : Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var type: Type
    var weight: Int
    var height: Int
    var baseExperience: Int
}

struct Type {
    var color: Color
    var imageName: String
}

let ghost = Type(color: Color(red: 0.965, green: 0.761, blue: 0.275), imageName: "ghost")
let electric = Type(color: Color(red: 0.718, green: 0.165, blue: 0.263), imageName: "electric")

let pokemons = [
    Pokemon(id: 94, name: "Gengar", imageName: "gengar", type: ghost, weight: 405, height: 15, baseExperience: 225),
    Pokemon(id: 25, name: "Pikachu", imageName: "pikachu", type: electric, weight: 60, height: 4, baseExperience: 112)
]
