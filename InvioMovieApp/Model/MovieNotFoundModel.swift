//
//  MovieNotFoundModel.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 8.08.2022.
//

import Foundation

struct SearchNotFound: Codable {

    let response, error: String

    enum CodingKeys: String, CodingKey {
        case response = "Response"
        case error = "Error"
    }
}
