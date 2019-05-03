//
//  Configurator.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/28/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

protocol NameAndPhotoConfigurable {
    func configure(viewController: NameAndPhotoViewController, coordinator: MainCoordinator)
}

class NameAndPhotoConfigurator: NameAndPhotoConfigurable {
    func configure(viewController: NameAndPhotoViewController, coordinator: MainCoordinator) {
        let nameAndPhotoPresenter = NameAndPhotoPresenter(view: viewController, coordinator: coordinator)
        viewController.presenter = nameAndPhotoPresenter
    }
}

protocol SkillsConfigurable {
    func configure(viewController: SkillsViewController, coordinator: MainCoordinator)
}

class SkillsConfigurator: SkillsConfigurable {
    func configure(viewController: SkillsViewController, coordinator: MainCoordinator) {
        let skillsPresenter = SkillsPresenter(view: viewController, coordinator: coordinator)
        viewController.presenter = skillsPresenter
    }
}

protocol EducationConfigurable {
    func configure(viewController: EducationViewController, coordinator: MainCoordinator)
}

class EducationConfigurator: EducationConfigurable {
    func configure(viewController: EducationViewController, coordinator: MainCoordinator) {
        let educationPresenter = EducationPresenter(view: viewController, coordinator: coordinator)
        viewController.presenter = educationPresenter
    }
}

protocol InterestsConfigurable {
    func configure(viewController: InterestsViewController, coordinator: MainCoordinator)
}

class InterestsConfigurator: InterestsConfigurable {
    func configure(viewController: InterestsViewController, coordinator: MainCoordinator) {
        let interestsPresenter = InterestsPresenter(view: viewController, coordinator: coordinator)
        viewController.presenter = interestsPresenter
    }
}
