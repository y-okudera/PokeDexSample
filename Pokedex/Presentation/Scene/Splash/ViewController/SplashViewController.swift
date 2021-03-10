//
//  SplashViewController.swift
//  Pokedex
//
//  Created by yuoku on 10/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import Reusable
import RxCocoa
import RxSwift
import UIKit

final class SplashViewController: UIViewController {

    var viewModel: SplashViewModelType!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.bindInput()
        self.bindOutput()
    }
}

// MARK: - bind input
extension SplashViewController {

    private func bindInput() {
        /*
         *  EXAMPLE:
         *
         *  button.rx.tap
         *      .bind(to: viewModel.input.buttonTap)
         *      .disposed(by: disposeBag)
         */
    }
}

// MARK: - bind output
extension SplashViewController {

    private func bindOutput() {
        /*
         *  EXAMPLE:
         *
         *  viewModel.output.observable(for: \.isEnabled)
         *      .bind(to: button.rx.isEnabled)
         *      .disposed(by: disposeBag)
         *
         *  print("rawValue of isEnabled = \(output.value(for: \.isEnabled))")
         */
    }
}
