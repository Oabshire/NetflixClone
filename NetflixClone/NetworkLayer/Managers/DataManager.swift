//
//  DataManager.swift
//  NetflixClone
//
//  Created by Onie on 14.12.2022.
//

class DataManager {
	private let requestManager = RequestManager()

	/// Get menu
	/// - Returns: array of Movies
	func getMovies() async throws -> [MovieContainer] {
		return try await requestManager.perform(MoviesRequest.getTrendingMovies)
	}
}
