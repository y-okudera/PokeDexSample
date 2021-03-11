//
//  HomeViewController.swift
//  Pokedex
//
//  Created by yuoku on 12/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import Reusable
import RxCocoa
import RxOptional
import RxSwift
import UIKit

final class HomeViewController: UIViewController {

    var viewModel: HomeViewModelType!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.bindInput()
        self.bindOutput()
    }
}

// MARK: - bind input
extension HomeViewController {

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
extension HomeViewController {

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
