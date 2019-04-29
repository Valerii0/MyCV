//
//  MainCoordinator.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/28/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

protocol Coordinatable {
    var tabBarController: UITabBarController { get set }
}

class MainCoordinator: Coordinatable {

    var window: UIWindow
    var tabBarController: UITabBarController

    private enum StoryboardsName: String {
        case nameAndPhotoTab = "NameAndPhoto"
    }

    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        self.tabBarController = UITabBarController()
        tabBarController.tabBar.tintColor = .black
    }

    func makeTabBarRoot() {
        window.rootViewController = tabBarController
        tabBarController.viewControllers = [
            nameAndPhotoViewController()
        ]
    }

    func nameAndPhotoViewController() -> UIViewController {
        let viewController = NameAndPhotoViewController.instantiate(storyboardName: StoryboardsName.nameAndPhotoTab.rawValue)
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        let configurator = NameAndPhotoConfigurator()
        configurator.configure(viewController: viewController, coordinator: self)
        return viewController
    }

}

