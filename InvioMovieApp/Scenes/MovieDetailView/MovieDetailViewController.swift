//
//  MovieDetailViewController.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 6.08.2022.
//

import UIKit

class MovieDetailViewController: UIViewController {

    let appearance = UINavigationBarAppearance()
    let titleLabel = UILabel()
    var posterView = UIImageView()
    let genreLabel = UILabel()
    let yearTitleLabel = UILabel()
    let yearLabel = UILabel()
    let rateTitleLabel = UILabel()
    let imdbRatingLabel = UILabel()
    let plotLabel = UILabel()

    private let movieData: MoviesData

    init(movieData: MoviesData) {
        self.movieData = movieData
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        updateDetailUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        enableHero()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        disableHero()
    }

    func updateDetailUI() {
        let movie = self.movieData
        titleLabel.text = movie.title
        let url = URL(string: movie.poster)
        posterView.kf.setImage(with: url)
        yearLabel.text = movie.year
        genreLabel.text = movie.genre
        imdbRatingLabel.text = movie.imdbRating
        plotLabel.text = movie.plot
        navigationItem.title = movie.title
    }
}
