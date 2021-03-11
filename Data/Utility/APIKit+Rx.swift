//
//  APIKit+Rx.swift
//  Data
//
//  Created by okudera on 2021/03/11.
//

import APIKit
import RxSwift

extension Session: ReactiveCompatible {}

extension Reactive where Base: Session {
    
    /// RxのSingleでResponseを取得する
    /// - Parameter request: Request
    /// - Returns: Single<T.Response>
    func response<T: Request>(for request: T) -> Single<T.Response> {
        return Single.create { [weak base] single -> Disposable in
            print(request)

            let task = base?.send(request) { result in
                switch result {
                case .success(let response):
                    single(.success(response))
                case .failure(let error):
                    single(.failure(error))
                }
            }
            return Disposables.create {
                task?.cancel()
            }
        }
    }
}
