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
        return HomeUseCaseImpl()
    }
}

public protocol HomeUseCase {

}

private final class HomeUseCaseImpl: HomeUseCase {

    init() {

    }
}
