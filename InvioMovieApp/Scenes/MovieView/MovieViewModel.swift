//
//  MovieViewModel.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 6.08.2022.
//

import Foundation

class MovieViewModel {

    private var movieService = MovieService()
    private var movieNotFoundService = MovieNotFoundService()
    private var searchedMovie: MoviesData?
    private var notFoundMovie: SearchNotFound?

    func getMovies(for searchString: String, completion: @escaping(MoviesData) -> Void ) {
        movieService.getSearchMovies(with: searchString) { (result) in
            self.searchedMovie = result
            guard let searchedMovie = self.searchedMovie else {
                return
            }
            completion(searchedMovie)
        }
    }

    func getSearchNotFoundMovies(for searchString: String, completion: @escaping(SearchNotFound) -> Void ) {
        movieNotFoundService.getSearchNotFoundMovies(with: searchString) { (result) in
            self.notFoundMovie = result
            guard let notfound = self.notFoundMovie else {
                return
            }
            completion(notfound)
        }
    }

    func numberOfRowsInSection(section: Int) -> Int {
        if self.searchedMovie != nil {
            return 1
        }
        return 0
    }

}
