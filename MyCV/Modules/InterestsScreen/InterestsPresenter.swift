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
        self.view?.setNavigationTitle(title: AppConstants.InterestsScreenConstants.Common.title.rawValue)
    }

    func provideCellsData() {
        let cellsDataArray: [CellsModel] = [CellsModel(opened: false,
                                                      title: AppConstants.InterestsScreenConstants.Interests.gym.rawValue,
                                                      sectionData: AppConstants.AssetsConstants.interestsGym.rawValue),
                                           CellsModel(opened: false,
                                                      title: AppConstants.InterestsScreenConstants.Interests.coding.rawValue,
                                                      sectionData: AppConstants.AssetsConstants.interestsMac.rawValue),
                                           CellsModel(opened: false,
                                                      title: AppConstants.InterestsScreenConstants.Interests.football.rawValue,
                                                      sectionData: AppConstants.AssetsConstants.interestsStadium.rawValue)]

        self.view?.setCellsArray(cellsDataArray: cellsDataArray)
    }
}
