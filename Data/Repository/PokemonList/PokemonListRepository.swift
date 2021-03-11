//
//  PokemonListRepository.swift
//  Data
//
//  Created by okudera on 2021/03/11.
//

import RxSwift

public enum PokemonListRepositoryProvider {

    public static func provide() -> PokemonListRepository {
        return PokemonListRepositoryImpl(apiDataStore: PokemonListAPIDataStoreProvider.provide())
    }
}

public protocol PokemonListRepository {
    func get() -> Single<PokemonListResponse>
}

private final class PokemonListRepositoryImpl: PokemonListRepository {

    let apiDataStore: PokemonListAPIDataStore

    init(apiDataStore: PokemonListAPIDataStore) {
        self.apiDataStore = apiDataStore
    }

    func get() -> Single<PokemonListResponse> {
        self.apiDataStore.get()
    }
}
