//
//  NSObject+HasDisposeBag.swift
//  Presentation
//
//  Created by okudera on 2021/03/11.
//

import RxSwift
import ObjectiveC

extension NSObject: HasDisposeBag {}

// MARK: - HasDisposeBag

private var disposeBagContext: UInt8 = 0

protocol HasDisposeBag: AnyObject {

    /// a unique RxSwift DisposeBag instance
    var disposeBag: DisposeBag { get set }
}

extension HasDisposeBag {

    func synchronizedBag<T>( _ action: () -> T) -> T {
        objc_sync_enter(self)
        let result = action()
        objc_sync_exit(self)
        return result
    }

    /// a unique RxSwift DisposeBag instance
    public var disposeBag: DisposeBag {
        get {
            return synchronizedBag {
                if let disposeObject = objc_getAssociatedObject(self, &disposeBagContext) as? DisposeBag {
                    return disposeObject
                }
                let disposeObject = DisposeBag()
                objc_setAssociatedObject(self, &disposeBagContext, disposeObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                return disposeObject
            }
        }

        set {
            synchronizedBag {
                objc_setAssociatedObject(self, &disposeBagContext, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
}
