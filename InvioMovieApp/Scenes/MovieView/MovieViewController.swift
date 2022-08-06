//
//  ViewController.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 5.08.2022.
//

import UIKit

class MovieViewController: UIViewController {

    private let viewModel = MovieViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        viewModel.getMovies(for: "father") {

        }
    }

}
