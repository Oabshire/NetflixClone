//
//  MovieContainer.swift
//  NetflixClone
//
//  Created by Onie on 14.12.2022.
//

import Foundation

/// Container of all menu
struct AllResponseContainer: Codable {
	let page: Int
	let results: [MovieContainer]
	let totalPages: Int
	let totalResults: Int

	enum CodingKeys: String, CodingKey {
		case page, results
		case totalPages = "total_pages"
		case totalResults = "total_results"
	}
}

struct MovieContainer: Codable {
	let adult: Bool
	let backdropPath: String
	let id: Int
	let title: String
	let originalLanguage: String
	let originalTitle: String
	let overview: String
	let posterPath: String
	let mediaType: String
	let genreIds: [Int]
	let popularity: Double
	let releaseDate: String
	let video: Bool
	let voteAverage: Double
	let voteCount: Int

	enum CodingKeys: String, CodingKey {
		case adult, id, title, overview, popularity, video
		case backdropPath = "backdrop_path"
		case originalLanguage = "original_language"
		case originalTitle = "original_title"
		case posterPath = "poster_path"
		case mediaType = "media_type"
		case genreIds = "genre_ids"
		case releaseDate = "release_date"
		case voteAverage = "vote_average"
		case voteCount = "vote_count"
	}
}
