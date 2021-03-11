//
//  PokemonListAPIResponse.swift
//  Data
//
//  Created by okudera on 2021/03/11.
//

import Foundation

public struct PokemonListResponse: Decodable {

    public let count: Int

    public let previous: String?

    public let next: String?

    public let results: [PokeAPIResult]
}
