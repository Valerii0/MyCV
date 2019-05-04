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
    //func setCellsArray(cellsDataArray: [CellsModel])
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
//
//    func provideCellsData() {
//        let cellsDataArray: [CellsModel] = [CellsModel(opened: false,
//                                                       title: AppConstants.InterestsScreenConstants.Interests.gym.rawValue,
//                                                       sectionData: AppConstants.AssetsConstants.interestsGym.rawValue),
//                                            CellsModel(opened: false,
//                                                       title: AppConstants.InterestsScreenConstants.Interests.coding.rawValue,
//                                                       sectionData: AppConstants.AssetsConstants.interestsMac.rawValue),
//                                            CellsModel(opened: false,
//                                                       title: AppConstants.InterestsScreenConstants.Interests.football.rawValue,
//                                                       sectionData: AppConstants.AssetsConstants.interestsStadium.rawValue)]
//
//        self.view?.setCellsArray(cellsDataArray: cellsDataArray)
//    }
}
