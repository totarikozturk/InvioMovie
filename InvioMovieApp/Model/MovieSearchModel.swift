//
//  MovieSearchModel.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 6.08.2022.
//

import Foundation

struct MoviesSearchData: Codable {
    let search: [MoviesData]?
}

struct MoviesData: Codable {
    let title: String
    let year: String
    let released: String
    let plot: String
    let poster: String
    let imdbRating: String
    let genre: String
    let director: String
    let actors: String

    enum CodingKeys: String, CodingKey {
            case title = "Title"
            case year = "Year"
            case released = "Released"
            case genre = "Genre"
            case director = "Director"
            case actors = "Actors"
            case plot = "Plot"
            case poster = "Poster"
            case imdbRating = "imdbRating"
    }
}
