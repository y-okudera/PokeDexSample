//
//  PokemonListViewData.swift
//  Domain
//
//  Created by okudera on 2021/03/11.
//

import Data
import Foundation

public struct PokemonListViewData {

    public let count: Int
    public let pokemonDataList: [PokemonData]

    init(_ response: PokemonListResponse) {
        self.count = response.count
        self.pokemonDataList = response.results.map { .init(pokeAPIResult: $0) }
    }
}
