//
//  PokemonListAPIRequest.swift
//  Data
//
//  Created by okudera on 2021/03/11.
//

import APIKit

struct PokemonListAPIRequest: APIRequestable {

    typealias Response = PokemonListResponse
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/pokemon"
    }

    let offset: Int = 0
    let limit: Int = 807
}
