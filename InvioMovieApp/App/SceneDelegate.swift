//
//  SceneDelegate.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 5.08.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let navController = UINavigationController()
        let viewController = MovieViewController()
        navController.viewControllers = [viewController]
        window.rootViewController = navController
        self.window = window
        window.makeKeyAndVisible()
    }

}
