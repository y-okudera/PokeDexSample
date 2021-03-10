//
//  SplashViewModel.swift
//  Pokedex
//
//  Created by yuoku on 10/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import Domain
import RxCocoa
import RxSwift
import Unio

protocol SplashViewModelType: AnyObject {
    var input: InputWrapper<SplashViewModel.Input> { get }
    var output: OutputWrapper<SplashViewModel.Output> { get }
}

final class SplashViewModel: UnioStream<SplashViewModel>, SplashViewModelType {

    convenience init(extra: Extra) {
        self.init(input: Input(), state: State(), extra: extra)
    }
}

extension SplashViewModel {

    struct Input: InputType {

        /*
         *  EXAMPLE:
         *
         *  let buttonTap = PublishRelay<Void>()
         */
    }

    struct Output: OutputType {
        /*
         *  EXAMPLE:
         *
         *  let isEnabled: Observable<Bool>
         */
    }

    struct State: StateType {
    }

    struct Extra: ExtraType {
        let wireframe: SplashWireframe
        let useCase: SplashUseCase
    }
}

extension SplashViewModel {

    static func bind(from dependency: Dependency<Input, State, Extra>, disposeBag: DisposeBag) -> Output {

        let state = dependency.state
        let extra = dependency.extra

        /*
         *  EXAMPLE:
         *
         *  dependency.inputObservable(for: \.buttonTap)
         *      .map { _ in false }
         *      .bind(to: state.isEnabled)
         *      .disposed(by: disposeBag)
         */

        return Output(
            /*
             * EXAMPLE:
             *
             * isEnabled: state.isEnabled.asObservable()
             */
        )
    }
}
