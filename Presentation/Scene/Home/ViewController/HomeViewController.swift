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
        rx.viewWillAppear
            .map { _ in }
            .bind(to: viewModel.input.viewWillAppear)
            .disposed(by: disposeBag)
    }
}

// MARK: - bind output
extension HomeViewController {

    private func bindOutput() {
        viewModel.output.data
            .filterNil()
            .bind(onNext: {
                print($0)
            })
            .disposed(by: disposeBag)
    }
}
