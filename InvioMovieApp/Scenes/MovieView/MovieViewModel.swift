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

    func getMovies(for searchString: String, completion: @escaping () -> Void) {
        movieService.getSearchMovies(with: searchString) { movieSearch in
            self.searchedMovie = movieSearch
            print(self.searchedMovie?.poster as Any)
        }
    }

}
