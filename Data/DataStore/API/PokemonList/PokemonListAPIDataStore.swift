//
//  PokemonListAPIDataStore.swift
//  Data
//
//  Created by okudera on 2021/03/11.
//

import APIKit
import RxSwift

enum PokemonListAPIDataStoreProvider {

    static func provide() -> PokemonListAPIDataStore {
        return PokemonListAPIDataStoreImpl()
    }
}

protocol PokemonListAPIDataStore {
    func get() -> Single<PokemonListResponse>
}

private final class PokemonListAPIDataStoreImpl: PokemonListAPIDataStore {

    private let session: Session

    init(session: Session = .shared) {
        self.session = session
    }

    func get() -> Single<PokemonListResponse> {
        return self.session.rx.response(for: PokemonListAPIRequest())
    }
}
