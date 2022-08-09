//
//  MovieViewController+Ext.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 7.08.2022.
//

import UIKit

extension MovieViewController {

    func openDetailView() {
        guard let data = self.movieData else { return }
        let movieDetailViewController = MovieDetailViewController(movieData: data)
        self.navigationController?.navigationBar.isHidden = false
        movieDetailViewController.modalPresentationStyle = .fullScreen
        showHero(movieDetailViewController)
    }

    func showAlert() {
        let alert = UIAlertController(title: "Error",
                                      message: "The movie you searched is not found!",
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Try again", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
