//
//  MovieCell.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 7.08.2022.
//

import UIKit
import Kingfisher

class MovieCell: UITableViewCell {

    let movieCell = CellIdentifier.movieCellIdentifier

    let movieImage = UIImageView()
    let movieTitle = UILabel()
    let movieGenre = UILabel()
    let moviePlot = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        configure()
    }

    required init(coder: NSCoder) {
        fatalError("\(ErrorCode.fatalInitError)")
    }

    func setCellWithValuesOf(_ movie: MoviesData) {
        updateUI(poster: movie.poster, title: movie.title, genre: movie.genre, plot: movie.plot)
    }

    private func updateUI(poster: String?, title: String?, genre: String?, plot: String?) {

        guard let posterString = poster else { return }
        let url = URL(string: posterString)
        self.movieImage.kf.setImage(with: url)
        self.movieTitle.text = title
        self.movieGenre.text = genre
        self.moviePlot.text = plot
    }

}
