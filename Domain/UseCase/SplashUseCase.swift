//
//  SplashUseCase.swift
//  Domain
//
//  Created by okudera on 2021/03/10.
//

import Foundation

public enum SplashUseCaseProvider {

    public static func provide() -> SplashUseCase {
        return SplashUseCaseImpl()
    }
}

public protocol SplashUseCase {
//    func example()
}

private final class SplashUseCaseImpl: SplashUseCase {

}
