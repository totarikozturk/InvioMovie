//
//  MakeMovieCell.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 7.08.2022.
//

import UIKit
import SnapKit

extension MovieCell {

    override func layoutSubviews() {
        super.layoutSubviews()
        let bottomSpace: CGFloat = 10.0
        self.contentView.frame = self.contentView.frame.inset(by:
                                                 UIEdgeInsets(top: 0,
                                                              left: 0,
                                                              bottom: bottomSpace,
                                                              right: 0))
    }

    func configure() {
        drawDesign()
        makeMovieImage()
        makeMovieTitle()
        makeMovieGenre()
        makeMoviePlot()
    }

    func drawDesign() {
        contentView.backgroundColor = CustomColor.contentViewColor
        contentView.layer.cornerRadius = 24
        contentView.clipsToBounds = true
        backgroundColor = CustomColor.backGroundColor
        addSubview(movieImage)
        addSubview(movieTitle)
        addSubview(movieGenre)
        addSubview(moviePlot)
    }

    func makeMovieImage() {
        movieImage.layer.cornerRadius = 16
        movieImage.clipsToBounds = true
        movieImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.bottom.equalToSuperview().offset(-16)
            make.left.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-280)
        }
    }

    func makeMovieTitle() {
        movieTitle.lineBreakMode = .byWordWrapping
        movieTitle.numberOfLines = 0
        movieTitle.textAlignment = .left
        movieTitle.minimumScaleFactor = 1
        movieTitle.adjustsFontSizeToFitWidth = true
        movieTitle.textColor = CustomColor.textColor
        movieTitle.font = .boldSystemFont(ofSize: 24)
        movieTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.left.equalTo(movieImage.snp.right).offset(8)
        }
    }

    func makeMovieGenre() {
        movieGenre.textColor = CustomColor.textColor
        movieGenre.font = .systemFont(ofSize: 20)
        movieGenre.snp.makeConstraints { make in
            make.top.equalTo(movieTitle.snp.bottomMargin).offset(8)
            make.left.equalTo(movieImage.snp.right).offset(8)
        }
    }

    func makeMoviePlot() {
        moviePlot.lineBreakMode = .byWordWrapping
        moviePlot.numberOfLines = 0
        moviePlot.textAlignment = .left
        moviePlot.textColor = CustomColor.textColor
        moviePlot.font = .systemFont(ofSize: 16)
        moviePlot.snp.makeConstraints { make in
            make.top.equalTo(movieGenre.snp.bottomMargin).offset(16)
            make.left.equalTo(movieImage.snp.right).offset(8)
            make.right.equalTo(safeAreaLayoutGuide).offset(-8)
        }
    }

}
