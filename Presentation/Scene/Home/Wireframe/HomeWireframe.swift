//
//  HomeWireframe.swift
//  Pokedex
//
//  Created by yuoku on 12/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import UIKit

protocol HomeWireframe: AnyObject {}

final class HomeWireframeImpl: HomeWireframe {

    weak var viewController: UIViewController?
    weak var delegate: HomeWireframeDelegate?
}

protocol HomeWireframeDelegate: AnyObject {}
