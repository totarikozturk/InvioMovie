//
//  Constants.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 6.08.2022.
//

import UIKit

enum APIKey {
    static let baseUrl = "https://www.omdbapi.com/"
    static let apiKey = "2704612c"
}

enum CellIdentifier {
    static let movieCellIdentifier = "MovieCell"
}

enum CustomColor {
    static let backGroundColor = UIColor(named: "BackgroundColor")
    static let textColor = UIColor(named: "TextColor")
    static let titleColor = UIColor(named: "TitleColor")
    static let contentViewColor = UIColor(named: "ContentColor")
    static let rateColor = UIColor(named: "RateColor")
}

enum Texts {
    static let appTitle = NSLocalizedString("Movies", comment: "App title")
    static let movieTabTitle = NSLocalizedString("Movies", comment: "Tabbar movies button")
    static let bookMarkTabTitle =  NSLocalizedString("Bookmarks", comment: "Tabbar bookmark button")
    static let moviesViewTitle = NSLocalizedString("Movies You Looking For ?", comment: "MoviesView Navigation Title")
    static let bookmarkViewTitle = NSLocalizedString("Your Favourite Movies",
                                                     comment: "BookmarkView Navigation Title")
    static let detailReleaseTitle = NSLocalizedString("Release Date:",
                                                      comment: "MovieDetailView relase date text title")
    static let detailRateTitle = NSLocalizedString("Rate:",
                                                   comment: "MovieDetailView rate text title")
    static let searchBarPlaceHolderText = NSLocalizedString("Enter the movie name",
                                                            comment: "Searchbar Placeholder text")
}

enum ErrorCode {
    static let fatalInitError = "init(coder:) has not been implemented"
}
