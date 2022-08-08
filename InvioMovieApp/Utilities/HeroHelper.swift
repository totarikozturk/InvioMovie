//
//  HeroHelper.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 8.08.2022.
//

import UIKit
import Hero

extension UIViewController {

    func disableHero() {
        navigationController?.hero.isEnabled = false
    }

    func enableHero() {
        hero.isEnabled = true
        navigationController?.hero.isEnabled = true
    }

    func showHero(_ viewController: UIViewController,
                  navigationAnimationType: HeroDefaultAnimationType =
        .autoReverse(presenting: .slide(direction: .down))) {
        viewController.hero.isEnabled = true
        navigationController?.hero.isEnabled = true
        navigationController?.hero.navigationAnimationType = navigationAnimationType
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension UINavigationController {
    func show(_ viewController: UIViewController,
              navigationAnimationType: HeroDefaultAnimationType =
        .autoReverse(presenting: .slide(direction: .down))) {
        viewController.hero.isEnabled = true
        hero.isEnabled = true
        hero.navigationAnimationType = navigationAnimationType
        pushViewController(viewController, animated: true)
    }

}
