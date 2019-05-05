//
//  SkillsPresenter.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/2/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import Foundation

protocol SkillsView: class {
    func setNavigationTitle(title: String)
    func showImage(imageUrl: String)
    func setLabelsData(twoDimensionalArrayForLabels: [[String]])
}

class SkillsPresenter {

    private weak var view: SkillsView?
    private var coordinator: MainCoordinator?

    init(view: SkillsView, coordinator: MainCoordinator) {
        self.view = view
        self.coordinator = coordinator
    }

    func provideTitle() {
        self.view?.setNavigationTitle(title: AppConstants.TabBarTitleConstants.skills.localized)
    }

    func provideImageUrl() {
        self.view?.showImage(imageUrl: AppConstants.AssetsConstants.wheel.rawValue)
    }

    func provideTwoDimensionalArrayForLabels() {
        let twoDimensionalArrayForLabels: [[String]] = [
            [AppConstants.SkillsScreenConstants.Headline.programmingLanguages.localized, AppConstants.SkillsScreenConstants.HeadlinesBody.programmingLanguages.rawValue],
            [AppConstants.SkillsScreenConstants.Headline.ides.localized, AppConstants.SkillsScreenConstants.HeadlinesBody.ides.rawValue],
            [AppConstants.SkillsScreenConstants.Headline.generalKnowledge.localized, AppConstants.SkillsScreenConstants.HeadlinesBody.generalKnowledge.rawValue],
            [AppConstants.SkillsScreenConstants.Headline.graphic.localized, AppConstants.SkillsScreenConstants.HeadlinesBody.graphic.rawValue]
        ]
        self.view?.setLabelsData(twoDimensionalArrayForLabels: twoDimensionalArrayForLabels)
    }
}
