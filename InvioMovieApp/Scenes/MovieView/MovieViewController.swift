//
//  ViewController.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 5.08.2022.
//

import UIKit

class MovieViewController: UIViewController {

    private let viewModel = MovieViewModel()
    private var searchText = String()

    let activityIndicator = UIActivityIndicatorView()
    let appearance = UINavigationBarAppearance()
    let searchBar = UISearchBar()
    let searchButton = UIButton()
    let tableView = UITableView()
    var movieData: MoviesData?

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        enableHero()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        disableHero()
    }

    func callMovie(callTitle: String) {
        viewModel.getMovies(for: callTitle) { result in
            DispatchQueue.main.async {
                print(result)
                self.tableView.reloadData()
                self.activityIndicator.stopAnimating()
            }
        }

        viewModel.getSearchNotFoundMovies(for: callTitle) { _ in
            DispatchQueue.main.async {
                self.activityIndicator.stopAnimating()
                self.showAlert()
            }
        }
    }

    @objc func searchButtonTapped(_ sender: UIButton) {
        callMovie(callTitle: searchText)
        self.activityIndicator.startAnimating()
        self.tableView.reloadData()
    }
}
 // MARK: UITableViewDelegate, UITableViewDataSource
extension MovieViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         viewModel.numberOfRowsInSection(section: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.movieCellIdentifier,
                                                       for: indexPath) as? MovieCell else { return UITableViewCell() }
        let movie = viewModel.cellForRow()
        cell.setCellWithValuesOf(movie)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.movieData = viewModel.didSelectedRow()
        openDetailView()
    }
}

// MARK: UISearchBarDelegate
extension MovieViewController: UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.searchText = searchText
    }
}
