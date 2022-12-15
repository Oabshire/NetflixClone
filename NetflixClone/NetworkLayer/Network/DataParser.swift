//
//  DataParser.swift
//  NetflixClone
//
//  Created by Onie on 14.12.2022.
//

import Foundation

protocol DataParserProtocol {
	func parse<T: Decodable>(data: Data) throws -> T
}

class DataParser: DataParserProtocol {
	private var jsonDecoder: JSONDecoder

	init(jsonDecoder: JSONDecoder = JSONDecoder()) {
		self.jsonDecoder = jsonDecoder
		self.jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
	}

	func parse<T: Decodable>(data: Data) throws -> T {
		return try jsonDecoder.decode(T.self, from: data)
	}
}
