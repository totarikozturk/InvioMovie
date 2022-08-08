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

    static let searchButton = NSLocalizedString("Search", comment: "SearchButton Title")
    static let moviesViewTitle = NSLocalizedString("Movies You Looking For ?", comment: "MoviesView Navigation Title")
    static let searchBarPlaceHolderText = NSLocalizedString("Enter the movie name",
                                                            comment: "Searchbar Placeholder text")
    static let detailYearLabel = NSLocalizedString("Year:",
                                                            comment: "DetailYearLabel text")
    static let detailRateLabel = NSLocalizedString("Rate:",
                                                            comment: "DetailRateLabel text")
}

enum ErrorCode {

    static let fatalInitError = "init(coder:) has not been implemented"

}
