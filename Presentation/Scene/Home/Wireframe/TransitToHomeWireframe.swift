//
//  TransitToHomeWireframe.swift
//  Pokedex
//
//  Created by yuoku on 12/03/2021.
//  Copyright © 2021 and factory inc.. All rights reserved.
//

import UIKit

protocol TransitToHomeWireframe: AnyObject {
    var viewController: UIViewController? { get set }

    /*
     *  TODO:
     *  EXAMPLE:
     *
     *  func presentHome()
     *  func pushHome()
     */
}

extension TransitToHomeWireframe {
    /*
     *  TODO:
     *  EXAMPLE:
     *
     *  func pushHome() {
     *      let vc = HomeBuilder.build()
     *      viewController?.navigationController?.pushViewController(vc, animated: true)
     *  }
     *
     *  func presentHome() {
     *      let vc = HomeBuilder.build()
     *      viewController?.present(vc, animated: true)
     *  }
     */
}
