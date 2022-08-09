//
//  MakeMovieCell.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 7.08.2022.
//
import SnapKit
import UIKit

extension MovieCell {

    // MARK: layoutSubviews
    override func layoutSubviews() {
        super.layoutSubviews()
        let bottomSpace: CGFloat = 10.0
        self.contentView.frame = self.contentView.frame.inset(by:
                                                 UIEdgeInsets(top: 0,
                                                              left: 0,
                                                              bottom: bottomSpace,
                                                              right: 0))
    }

    // MARK: configure
    func configure() {
        drawDesign()
        makeMovieImage()
        makeMovieTitle()
        makeMovieGenre()
        makeMoviePlot()
    }

    // MARK: drawDesign
    func drawDesign() {
        contentView.backgroundColor = CustomColor.contentViewColor
        contentView.layer.cornerRadius = 24
        contentView.clipsToBounds = true
        backgroundColor = CustomColor.backGroundColor
        addSubview(posterView)
        addSubview(titleLabel)
        addSubview(genreLabel)
        addSubview(plotLabel)
    }

    // MARK: makeMovieImage
    func makeMovieImage() {
        posterView.layer.cornerRadius = 16
        posterView.clipsToBounds = true
        posterView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.bottom.equalToSuperview().offset(-16)
            make.left.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-280)
        }
    }

    // MARK: makeMovieTitle
    func makeMovieTitle() {
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.minimumScaleFactor = 1
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textColor = CustomColor.textColor
        titleLabel.font = .boldSystemFont(ofSize: 24)
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.left.equalTo(posterView.snp.right).offset(8)
            make.right.equalToSuperview().offset(-8)
        }
    }

    // MARK: makeMovieGenre
    func makeMovieGenre() {
        genreLabel.textColor = CustomColor.textColor
        genreLabel.font = .systemFont(ofSize: 20)
        genreLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottomMargin).offset(8)
            make.left.equalTo(posterView.snp.right).offset(8)
            make.right.equalToSuperview().offset(-8)
        }
    }

    // MARK: makeMoviePlot
    func makeMoviePlot() {
        plotLabel.lineBreakMode = .byWordWrapping
        plotLabel.numberOfLines = 0
        plotLabel.textAlignment = .left
        plotLabel.textColor = CustomColor.textColor
        plotLabel.font = .systemFont(ofSize: 16)
        plotLabel.snp.makeConstraints { make in
            make.top.equalTo(genreLabel.snp.bottomMargin).offset(16)
            make.left.equalTo(posterView.snp.right).offset(8)
            make.right.equalTo(safeAreaLayoutGuide).offset(-8)
        }
    }
}
