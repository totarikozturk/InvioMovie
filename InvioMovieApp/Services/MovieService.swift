//
//  MovieService.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 6.08.2022.
//
import Alamofire
import Foundation

protocol ServiceProtocol {
    func didFailWithError(error: Error)
}

class MovieService {

    var service: ServiceProtocol?

    func getSearchMovies(with searchQuery: String, completion: @escaping(MoviesData) -> Void) {

        let escapedSearchQuery = searchQuery.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
        let url = APIKey.baseUrl + "?apikey=" + APIKey.apiKey + "&t=" + escapedSearchQuery

        AF.request(url,
                   method: .get,
                   parameters: nil,
                   encoding: URLEncoding.default,
                   headers: nil,
                   interceptor: nil)
                   .response { response in
            guard let data = response.data else { return }
            guard let moviesSearch = self.parseJsonFound(data) else { return }
            completion(moviesSearch)
                   }
    }

    func parseJsonFound(_ moviesData: Data) -> MoviesData? {
        do {
            let decodeData = try JSONDecoder().decode(MoviesData.self, from: moviesData)
            return decodeData
        } catch {
            service?.didFailWithError(error: error)
            return nil
        }
    }
}
