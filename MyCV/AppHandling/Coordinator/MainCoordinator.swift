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
        case skillsTab = "Skills"
        case educationTab = "Education"
        case interestsTab = "Interests"
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
            nameAndPhotoViewController(),
            skillsViewController(),
            educationViewController(),
            interestsViewController()
        ]
    }

    func nameAndPhotoViewController() -> UIViewController {
        let viewController = NameAndPhotoViewController.instantiate(storyboardName: StoryboardsName.nameAndPhotoTab.rawValue)
        viewController.tabBarItem = UITabBarItem(title: AppConstants.tabBarTitleConstants.i.rawValue,
                                                 image: UIImage(named: AppConstants.AssetsConstants.tabBarCard.rawValue),
                                                 tag: 0)
        let configurator = NameAndPhotoConfigurator()
        configurator.configure(viewController: viewController, coordinator: self)
        return viewController
    }

    func skillsViewController() -> UINavigationController {
        let viewController = SkillsViewController.instantiate(storyboardName: StoryboardsName.skillsTab.rawValue)
        viewController.tabBarItem = UITabBarItem(title: AppConstants.tabBarTitleConstants.skills.rawValue,
                                                 image: UIImage(named: AppConstants.AssetsConstants.tabBarIntellectual.rawValue),
                                                 tag: 1)
        let configurator = SkillsConfigurator()
        configurator.configure(viewController: viewController, coordinator: self)
        let navigationController = UINavigationController()
        navigationController.viewControllers = [viewController]
        return navigationController
    }

    func educationViewController() -> UINavigationController {
        let viewController = EducationViewController.instantiate(storyboardName: StoryboardsName.educationTab.rawValue)
        viewController.tabBarItem = UITabBarItem(title: AppConstants.tabBarTitleConstants.education.rawValue,
                                                 image: UIImage(named: AppConstants.AssetsConstants.tabBarStudent.rawValue),
                                                 tag: 2)
        let configurator = EducationConfigurator()
        configurator.configure(viewController: viewController, coordinator: self)
        let navigationController = UINavigationController()
        navigationController.viewControllers = [viewController]
        return navigationController
    }

    func interestsViewController() -> UINavigationController {
        let viewController = InterestsViewController.instantiate(storyboardName: StoryboardsName.interestsTab.rawValue)
        viewController.tabBarItem = UITabBarItem(title: AppConstants.tabBarTitleConstants.interests.rawValue,
                                                 image: UIImage(named: AppConstants.AssetsConstants.tabBarStar.rawValue),
                                                 tag: 3)
        let configurator = InterestsConfigurator()
        configurator.configure(viewController: viewController, coordinator: self)
        let navigationController = UINavigationController()
        navigationController.viewControllers = [viewController]
        return navigationController
    }
}
