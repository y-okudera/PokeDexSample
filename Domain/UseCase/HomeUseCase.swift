//
//  HomeUseCase.swift
//  Domain
//
//  Created by okudera on 2021/03/12.
//

import Data
import RxSwift

public enum HomeUseCaseProvider {

    public static func provide() -> HomeUseCase {
        return HomeUseCaseImpl(pokemonListRepository: PokemonListRepositoryProvider.provide())
    }
}

public protocol HomeUseCase {
    func getPokemonList() -> Single<PokemonListViewData>
}

private final class HomeUseCaseImpl: HomeUseCase {

    private let pokemonListRepository: PokemonListRepository

    init(pokemonListRepository: PokemonListRepository) {
        self.pokemonListRepository = pokemonListRepository
    }

    func getPokemonList() -> Single<PokemonListViewData> {
        self.pokemonListRepository.get()
            .map { .init($0) }
    }
}
