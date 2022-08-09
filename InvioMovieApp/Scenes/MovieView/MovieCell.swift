//
//  MovieCell.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 7.08.2022.
//
import Kingfisher
import UIKit

class MovieCell: UITableViewCell {

    let movieCell = CellIdentifier.movieCellIdentifier

    let posterView = UIImageView()
    let titleLabel = UILabel()
    let genreLabel = UILabel()
    let plotLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        configure()
        selectionStyle = .none
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
        self.posterView.kf.setImage(with: url)
        self.titleLabel.text = title
        self.genreLabel.text = genre
        self.plotLabel.text = plot
    }
}
