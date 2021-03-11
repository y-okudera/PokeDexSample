//
//  HomeViewModel.swift
//  Pokedex
//
//  Created by yuoku on 12/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import Action
import Domain
import RxCocoa
import RxOptional
import RxSwift
import Unio

protocol HomeViewModelType: AnyObject {
    var input: InputWrapper<HomeViewModel.Input> { get }
    var output: OutputWrapper<HomeViewModel.Output> { get }
}

final class HomeViewModel: UnioStream<HomeViewModel>, HomeViewModelType {

    convenience init(extra: Extra) {
        self.init(input: Input(), state: State(), extra: extra)
    }
}

extension HomeViewModel {

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
        let wireframe: HomeWireframe
        let useCase: HomeUseCase
    }
}

extension HomeViewModel {

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
