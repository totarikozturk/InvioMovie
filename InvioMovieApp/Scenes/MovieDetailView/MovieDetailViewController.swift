//
//  MovieDetailViewController.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 6.08.2022.
//

import UIKit

class MovieDetailViewController: UIViewController {

    let appearance = UINavigationBarAppearance()
    let detailTitle = UILabel()
    var detailPoster = UIImageView()
    let detailGenre = UILabel()
    let detailYearLabel = UILabel()
    let detailYear = UILabel()
    let detailRateLabel = UILabel()
    let detailimdbRating = UILabel()
    let detailPlot = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        updateDetailUI()
    }

    func updateDetailUI() {
        guard let movie = DetailFetchdata.data else { return }
        detailTitle.text = movie.title
        let url = URL(string: movie.poster)
        detailPoster.kf.setImage(with: url)
        detailYear.text = movie.year
        detailGenre.text = movie.genre
        detailimdbRating.text = movie.imdbRating
        detailPlot.text = movie.plot
    }

}
