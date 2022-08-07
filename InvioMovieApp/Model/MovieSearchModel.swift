//
//  MovieSearchModel.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 6.08.2022.
//

import Foundation

struct MoviesData: Codable {
    var title: String
    var year: String
    var released: String
    var plot: String
    var poster: String
    var imdbRating: String
    var genre: String
    var director: String
    var actors: String

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
