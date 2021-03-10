//
//  SplashBuilder.swift
//  Pokedex
//
//  Created by yuoku on 10/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import UIKit
import Domain

enum SplashBuilder {

    static func build() -> UIViewController {
        let viewController = SplashViewController.instantiate()
        let wireframe = SplashWireframeImpl()

        wireframe.viewController = viewController

        let viewModel = SplashViewModel(
            extra: .init(
                wireframe: wireframe,
                useCase: SplashUseCaseProvider.provide()
            )
        )

        viewController.viewModel = viewModel

        return viewController
    }
}
