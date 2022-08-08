//
//  MovieNotFoundService.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 8.08.2022.
//

import Foundation
import Alamofire

class MovieNotFoundService {

    var service: ServiceProtocol?

    func getSearchNotFoundMovies(with searchQuery: String, completion: @escaping(SearchNotFound) -> Void) {

        let url = APIKey.baseUrl + "?apikey=" + APIKey.apiKey + "&t=" + searchQuery

        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default,
                   headers: nil, interceptor: nil).response { (response ) in

            guard let data = response.data else {return}
            guard let moviesSearch = self.parseJsonNotFound(data) else { return }
            completion(moviesSearch)
        }
    }

    func parseJsonNotFound(_ moviesData: Data) -> SearchNotFound? {
        do {
            let decodeData = try JSONDecoder().decode(SearchNotFound.self, from: moviesData)
            return decodeData

        } catch {
            service?.didFailWithError(error: error)
            return nil
        }
    }

}
