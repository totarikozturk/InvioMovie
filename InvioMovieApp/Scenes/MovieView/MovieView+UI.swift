//
//  MakeMovieView.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 7.08.2022.
//
import SnapKit
import UIKit

extension MovieViewController {

// MARK: configureView
    func configureView() {
        drawDesign()
        makeActivityIndicator()
        navigationBarAppearance()
        makeSearchBar()
        makeSearchButton()
        makeTableView()
    }

// MARK: drawDesign
    func drawDesign() {
        view.addSubview(searchBar)
        view.addSubview(searchButton)
        view.addSubview(tableView)
        view.addSubview(activityIndicator)
        view.backgroundColor = CustomColor.backGroundColor
    }

// MARK: makeActivityIndicator
    func makeActivityIndicator() {
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.large
        activityIndicator.color = CustomColor.titleColor
    }

// MARK: makeSearchBar
    func makeSearchBar() {
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Home.searchBarPlaceHolderText".localized
        searchBar.delegate = self
        searchBar.tintColor = CustomColor.textColor
        searchBar.barTintColor = CustomColor.textColor
        searchBar.searchTextField.textColor = CustomColor.textColor
        searchBar.searchTextField.leftView?.tintColor = CustomColor.textColor
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.left.equalTo(view).offset(16)
            make.right.equalTo(view).offset(-16)
        }
    }

// MARK: makeSearchButton
    func makeSearchButton() {
        searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
        searchButton.setTitle("Home.searchButton".localized, for: .normal)
        let color = CustomColor.titleColor
        searchButton.setTitleColor(color, for: .normal)
        searchButton.backgroundColor = UIColor.darkGray
        searchButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        searchButton.layer.cornerRadius = 16
        searchButton.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottomMargin).offset(8)
            make.left.equalTo(view).offset(16)
            make.right.equalTo(view).offset(-16)
        }
    }

// MARK: makeTableView
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

// MARK: navigationBarAppearance
    func navigationBarAppearance() {
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = CustomColor.backGroundColor
        guard let customColor = CustomColor.titleColor else { return }
        appearance.largeTitleTextAttributes = [.foregroundColor: customColor]
        appearance.titleTextAttributes = [.foregroundColor: customColor]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.backgroundColor = CustomColor.backGroundColor
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "Home.movieViewTitle".localized
        navigationItem.titleView?.tintColor = CustomColor.titleColor
        navigationController?.navigationBar.tintColor = CustomColor.titleColor
    }
}
