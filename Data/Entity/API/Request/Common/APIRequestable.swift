//
//  APIRequestable.swift
//  Data
//
//  Created by okudera on 2021/03/11.
//

import APIKit
import Foundation

// MARK: - Protocol
protocol APIRequestable: Request, Encodable where Response: Decodable {}

// MARK: - Default implementation
extension APIRequestable {

    var baseURL: URL {
        let url = URL(string: "https://pokeapi.co/api/v2/")!
        return url
    }

    var method: HTTPMethod {
        return .get
    }

    var parameters: Any? {
        let jsonEncoder = JSONEncoder()
        jsonEncoder.keyEncodingStrategy = .convertToSnakeCase

        guard let data = try? jsonEncoder.encode(self) else {
            return nil
        }

        guard let jsonObject = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) else {
            return nil
        }

        guard let dictionary = jsonObject as? [String: Any] else {
            return nil
        }

        return dictionary
    }

    var headerFields: [String : String] {
        [:]
    }

    var dataParser: APIKit.DataParser {
        DecodableDataParser()
    }

    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else {
            assertionFailure("unexpectedObject")
            throw ResponseError.unexpectedObject(object)
        }
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        return try jsonDecoder.decode(Response.self, from: data)
    }
}

// MARK: - DataParser

final class DecodableDataParser: DataParser {

    var contentType: String? {
        return "application/json"
    }

    func parse(data: Data) throws -> Any {
        return data
    }
}
