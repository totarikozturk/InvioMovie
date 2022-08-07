//
//  MakeMovieView.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 7.08.2022.
//

import UIKit
import SnapKit

extension MovieViewController {

    func configureView() {
        drawDesign()
        navigationBarAppearance()
        makeSearchBar()
        makeSearchButton()
        makeTableView()
    }

    func drawDesign() {
        view.addSubview(searchButton)
        view.addSubview(tableView)
        view.backgroundColor = CustomColor.backGroundColor
    }

    func makeSearchBar() {
        searchBar.searchBar.searchBarStyle = .minimal
        searchBar.searchBar.placeholder = Texts.searchBarPlaceHolderText
        searchBar.searchResultsUpdater = self
        searchBar.searchBar.tintColor = CustomColor.textColor
        searchBar.searchBar.barTintColor = CustomColor.textColor
        searchBar.searchBar.searchTextField.textColor = CustomColor.textColor
    }

    func makeSearchButton() {
        searchButton.setTitle("Search", for: .normal)
        let color = CustomColor.titleColor
        searchButton.setTitleColor(color, for: .normal)
        searchButton.backgroundColor = UIColor.darkGray
        searchButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        searchButton.layer.cornerRadius = 16
        searchButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.left.equalTo(view).offset(16)
            make.right.equalTo(view).offset(-16)
        }
    }

    func makeTableView() {
        tableView.backgroundColor = CustomColor.backGroundColor
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 240
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(MovieCell.self, forCellReuseIdentifier: CellIdentifier.movieCellIdentifier)
        tableView.separatorStyle = .none
        tableView.snp.makeConstraints { make in
            make.top.equalTo(searchButton.snp_bottomMargin).offset(32)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide)
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
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.backgroundColor = CustomColor.backGroundColor
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = Texts.moviesViewTitle
        navigationItem.titleView?.tintColor = CustomColor.titleColor
        navigationController?.navigationBar.tintColor = .systemBlue
        navigationItem.searchController = searchBar
    }

}
