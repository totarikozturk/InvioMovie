//
//  MakeMovieDetailView.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 8.08.2022.
//
import SnapKit
import UIKit

extension MovieDetailViewController {

// MARK: configureView
    func configureView() {
        drawDesign()
        navigationBarAppearance()
        makeDetailPoster()
        makeDetailGenre()
        makeDetailYearLabel()
        makeDetailYear()
        makeDetailRateLabel()
        makeDetailimdbRating()
        makeDetailPlot()
    }

// MARK: drawDesign
    func drawDesign() {
        view.addSubview(posterView)
        view.addSubview(genreLabel)
        view.addSubview(yearTitleLabel)
        view.addSubview(yearLabel)
        view.addSubview(rateTitleLabel)
        view.addSubview(imdbRatingLabel)
        view.addSubview(plotLabel)
        view.backgroundColor = CustomColor.contentViewColor
    }

// MARK: makeDetailPoster
    func makeDetailPoster() {
        posterView.layer.cornerRadius = 16
        posterView.clipsToBounds = true
        posterView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(80)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-80)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.centerY)
        }
    }

// MARK: makeDetailGenre
    func makeDetailGenre() {
        genreLabel.textColor = CustomColor.textColor
        genreLabel.font = .boldSystemFont(ofSize: 32)
        genreLabel.snp.makeConstraints { make in
            make.top.equalTo(posterView.snp.bottomMargin).offset(16)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(16)
        }
    }

// MARK: makeDetailYearLabel
    func makeDetailYearLabel() {
        yearTitleLabel.text = "Detail.yearLabel".localized
        yearTitleLabel.textColor = CustomColor.titleColor
        yearTitleLabel.font = .boldSystemFont(ofSize: 24)
        yearTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(genreLabel.snp.bottomMargin).offset(16)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(16)
        }
    }

// MARK: makeDetailYear
    func makeDetailYear() {
        yearLabel.textColor = CustomColor.textColor
        yearLabel.font = .systemFont(ofSize: 22)
        yearLabel.snp.makeConstraints { make in
            make.top.equalTo(yearTitleLabel).offset(2)
            make.left.equalTo(yearTitleLabel.snp.rightMargin).offset(12)
        }
    }

// MARK: makeDetailRateLabel
    func makeDetailRateLabel() {
        rateTitleLabel.text = "Detail.rateLabel".localized
        rateTitleLabel.textColor = CustomColor.titleColor
        rateTitleLabel.font = .boldSystemFont(ofSize: 24)
        rateTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(yearTitleLabel.snp.bottomMargin).offset(16)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(16)
        }
    }

// MARK: makeDetailimdbRating
    func makeDetailimdbRating() {
        imdbRatingLabel.textColor = CustomColor.textColor
        imdbRatingLabel.font = .systemFont(ofSize: 22)
        imdbRatingLabel.snp.makeConstraints { make in
            make.top.equalTo(rateTitleLabel).offset(2)
            make.left.equalTo(rateTitleLabel.snp.rightMargin).offset(12)
        }
    }

// MARK: makeDetailPlot
    func makeDetailPlot() {
        plotLabel.lineBreakMode = .byWordWrapping
        plotLabel.numberOfLines = 0
        plotLabel.textAlignment = .left
        plotLabel.textColor = CustomColor.textColor
        plotLabel.font = .systemFont(ofSize: 20)
        plotLabel.snp.makeConstraints { make in
            make.top.equalTo(rateTitleLabel.snp.bottomMargin).offset(16)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-16)
        }
    }

// MARK: navigationBarAppearance
    func navigationBarAppearance() {
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = CustomColor.backGroundColor
        guard let customColor = CustomColor.titleColor else { return }
        appearance.largeTitleTextAttributes = [.foregroundColor: customColor]
        appearance.titleTextAttributes = [.foregroundColor: customColor]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.backgroundColor = CustomColor.backGroundColor
        navigationController?.navigationBar.tintColor = CustomColor.titleColor
    }
}
