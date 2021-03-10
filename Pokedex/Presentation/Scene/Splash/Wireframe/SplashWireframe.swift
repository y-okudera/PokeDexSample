//
//  SplashWireframe.swift
//  Pokedex
//
//  Created by yuoku on 10/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import UIKit

protocol SplashWireframe: AnyObject {}

final class SplashWireframeImpl: SplashWireframe {

    weak var viewController: UIViewController?
    weak var delegate: SplashWireframeDelegate?
}

protocol SplashWireframeDelegate: AnyObject {}
