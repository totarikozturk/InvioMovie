//
//  MakeMovieDetailView.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 8.08.2022.
//

import UIKit
import SnapKit

extension MovieDetailViewController {

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

    func drawDesign() {
        view.addSubview(detailPoster)
        view.addSubview(detailGenre)
        view.addSubview(detailYearLabel)
        view.addSubview(detailYear)
        view.addSubview(detailRateLabel)
        view.addSubview(detailimdbRating)
        view.addSubview(detailPlot)
        view.backgroundColor = CustomColor.contentViewColor
    }

    func makeDetailPoster() {
        detailPoster.layer.cornerRadius = 16
        detailPoster.clipsToBounds = true
        detailPoster.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(80)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-80)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.centerY)
        }
    }

    func makeDetailGenre() {
        detailGenre.textColor = CustomColor.textColor
        detailGenre.font = .boldSystemFont(ofSize: 24)
        detailGenre.snp.makeConstraints { make in
            make.top.equalTo(detailPoster.snp.bottomMargin).offset(8)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(8)
        }
    }

    func makeDetailYearLabel() {
        detailYearLabel.text = Texts.detailYearLabel
        detailYearLabel.textColor = CustomColor.titleColor
        detailYearLabel.font = .boldSystemFont(ofSize: 22)
        detailYearLabel.snp.makeConstraints { make in
            make.top.equalTo(detailGenre.snp.bottomMargin).offset(8)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(8)
        }
    }
    func makeDetailYear() {
        detailYear.textColor = CustomColor.textColor
        detailYear.font = .systemFont(ofSize: 20)
        detailYear.snp.makeConstraints { make in
            make.top.equalTo(detailYearLabel).offset(2)
            make.left.equalTo(detailYearLabel.snp.rightMargin).offset(12)
        }
    }

    func makeDetailRateLabel() {
        detailRateLabel.text = Texts.detailRateLabel
        detailRateLabel.textColor = CustomColor.titleColor
        detailRateLabel.font = .boldSystemFont(ofSize: 22)
        detailRateLabel.snp.makeConstraints { make in
            make.top.equalTo(detailYearLabel.snp.bottomMargin).offset(8)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(8)
        }
    }

    func makeDetailimdbRating() {
        detailimdbRating.textColor = CustomColor.textColor
        detailimdbRating.font = .systemFont(ofSize: 20)
        detailimdbRating.snp.makeConstraints { make in
            make.top.equalTo(detailRateLabel).offset(2)
            make.left.equalTo(detailRateLabel.snp.rightMargin).offset(12)
        }
    }

    func makeDetailPlot() {
        detailPlot.lineBreakMode = .byWordWrapping
        detailPlot.numberOfLines = 0
        detailPlot.textAlignment = .left
        detailPlot.textColor = CustomColor.textColor
        detailPlot.font = .systemFont(ofSize: 16)
        detailPlot.snp.makeConstraints { make in
            make.top.equalTo(detailRateLabel.snp.bottomMargin).offset(8)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-8)
        }
    }

    func navigationBarAppearance() {
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = CustomColor.backGroundColor
        guard let customColor = CustomColor.titleColor else { return }
        appearance.largeTitleTextAttributes = [.foregroundColor: customColor]
        appearance.titleTextAttributes  = [.foregroundColor: customColor]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.backgroundColor = CustomColor.backGroundColor
        navigationItem.title = DetailFetchdata.data?.title
    }
}
