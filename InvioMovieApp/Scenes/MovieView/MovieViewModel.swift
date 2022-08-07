//
//  MovieViewModel.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 6.08.2022.
//

import Foundation

class MovieViewModel {

    private var movieService = MovieService()
    private var searchedMovie: MoviesData?

    func getMovies(for searchString: String, completion: @escaping(MoviesData) -> Void ) {
        movieService.getSearchMovies(with: searchString) { (result) in
            self.searchedMovie = result
            guard let searchedMovie = self.searchedMovie else {
                return
            }
            completion(searchedMovie)
        }
    }

}
