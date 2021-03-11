//
//  HomeBuilder.swift
//  Pokedex
//
//  Created by yuoku on 12/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import Domain
import UIKit

public enum HomeBuilder {

    public static func build() -> UIViewController {
        let viewController = HomeViewController.instantiate()
        let wireframe = HomeWireframeImpl()

        wireframe.viewController = viewController

        let viewModel = HomeViewModel(
            extra: .init(
                wireframe: wireframe,
                useCase: HomeUseCaseProvider.provide()
            )
        )

        viewController.viewModel = viewModel

        return viewController
    }
}
