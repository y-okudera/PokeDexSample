//
//  String+.swift
//  Domain
//
//  Created by okudera on 2021/03/11.
//

import Foundation

extension String {

    private var ns: NSString {
        return (self as NSString)
    }

    var lastPathComponent: String {
        return ns.lastPathComponent
    }
}
