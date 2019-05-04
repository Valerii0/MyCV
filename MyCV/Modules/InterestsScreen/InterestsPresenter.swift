//
//  InterestsPresenter.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/1/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import Foundation

protocol InterestsView: class {
    func setNavigationTitle(title: String)
    func setCellsArray(cellsDataArray: [CellsModel])
}

class InterestsPresenter {

    private weak var view: InterestsView?
    private var coordinator: MainCoordinator?

    init(view: InterestsView, coordinator: MainCoordinator) {
        self.view = view
        self.coordinator = coordinator
    }

    func provideTitle() {
        self.view?.setNavigationTitle(title: AppConstants.TabBarTitleConstants.interests.localized)
    }

    func provideCellsData() {
        let cellsDataArray: [CellsModel] = [

            CellsModel(opened: false,
                       title: AppConstants.InterestsScreenConstants.Interests.coding.localized,
                       sectionData: AppConstants.AssetsConstants.interestsMac.rawValue),
            CellsModel(opened: false,
                       title: AppConstants.InterestsScreenConstants.Interests.ai.localized,
                       sectionData: AppConstants.AssetsConstants.interestsAI.rawValue),
            CellsModel(opened: false,
                       title: AppConstants.InterestsScreenConstants.Interests.gym.localized,
                       sectionData: AppConstants.AssetsConstants.interestsGym.rawValue),
            CellsModel(opened: false,
                       title: AppConstants.InterestsScreenConstants.Interests.football.localized,
                       sectionData: AppConstants.AssetsConstants.interestsStadium.rawValue),
            CellsModel(opened: false,
                       title: AppConstants.InterestsScreenConstants.Interests.traveling.localized,
                       sectionData: AppConstants.AssetsConstants.interestsTraveling.rawValue),
        ]

        self.view?.setCellsArray(cellsDataArray: cellsDataArray)
    }
}
