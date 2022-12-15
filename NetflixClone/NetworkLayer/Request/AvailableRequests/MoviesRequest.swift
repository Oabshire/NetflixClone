//
//  MoviesRequest.swift
//  NetflixClone
//
//  Created by Onie on 14.12.2022.
//

/// Available Menu requests
enum MoviesRequest: RequestProtocol {
	case getTrendingMovies

	var path: String {
		switch self {
		case .getTrendingMovies:
			return "/3/trending/all/day"
		}
	}

	var urlParams: [String: String?] {
		switch self {
		case .getTrendingMovies:
			return ["api_key":APIConstants.key]
		}
	}

	var requestType: RequestType {
		.GET
	}
}
