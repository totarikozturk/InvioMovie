//
//  ViewController.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 5.08.2022.
//

import UIKit

class MovieViewController: UIViewController {

    private let viewModel = MovieViewModel()
    private var movieData: MoviesData?

    let appearance = UINavigationBarAppearance()
    let searchBar = UISearchController()
    let searchButton = UIButton()
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        callMovie(callTitle: "godfather")
    }

    func callMovie(callTitle: String) {
        viewModel.getMovies(for: callTitle) { result in
            DispatchQueue.main.async {
                self.movieData = result
                self.tableView.reloadData()
            }
        }
    }

}

extension MovieViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.movieCellIdentifier,
                                                       for: indexPath) as? MovieCell else { return UITableViewCell() }
        let movie = self.movieData
        guard let cellData = movie else { return cell }
        cell.setCellWithValuesOf(cellData)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cellSelect: UITableViewCell = tableView.cellForRow(at: indexPath as IndexPath) else { return }
        cellSelect.selectionStyle = .none
        let movieDetailViewController = MovieDetailViewController()
//        let movie = viewModal.didSelectedRowAt(indexPath: indexPath)
//        Singleton.movieDetailData = movie
        self.navigationController?.navigationBar.isHidden = false
        movieDetailViewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(movieDetailViewController, animated: true)
    }

}

extension MovieViewController: UISearchBarDelegate, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text,
                      text.trimmingCharacters(in: CharacterSet.whitespaces).count >= 1  else {return}
        callMovie(callTitle: text)
    }
}
