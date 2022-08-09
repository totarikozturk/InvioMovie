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

enum ErrorCode {

    static let fatalInitError = "init(coder:) has not been implemented"
}
