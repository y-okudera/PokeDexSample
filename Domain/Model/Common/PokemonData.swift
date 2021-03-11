//
//  PokemonData.swift
//  Domain
//
//  Created by okudera on 2021/03/11.
//

import Data
import Foundation

public struct PokemonData {

    public let name: String
    public let number: Int?

    init(pokeAPIResult: PokeAPIResult) {
        self.name = pokeAPIResult.name
        self.number = Int(pokeAPIResult.url.lastPathComponent)
    }
}
