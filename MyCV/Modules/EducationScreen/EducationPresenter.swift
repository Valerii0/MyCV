//
//  EducationPresenter.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/2/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import Foundation

protocol EducationView: class {
    func setNavigationTitle(title: String)
    func setLabelsData(twoDimensionalArrayForLabels: [[String]])
}

class EducationPresenter {

    private weak var view: EducationView?
    private var coordinator: MainCoordinator?

    init(view: EducationView, coordinator: MainCoordinator) {
        self.view = view
        self.coordinator = coordinator
    }

    func provideTitle() {
        self.view?.setNavigationTitle(title: AppConstants.TabBarTitleConstants.education.localized)
    }

    func provideTwoDimensionalArrayForLabels() {
        let twoDimensionalArrayForLabels: [[String]] = [
            [AppConstants.EducationScreenConstants.EducationName.school.localized, AppConstants.EducationScreenConstants.EducationYear.school.rawValue],
            [AppConstants.EducationScreenConstants.EducationYear.lyceum.rawValue, AppConstants.EducationScreenConstants.EducationName.lyceum.localized],
            [AppConstants.EducationScreenConstants.EducationName.university.localized, AppConstants.EducationScreenConstants.EducationYear.university.rawValue],
            [AppConstants.EducationScreenConstants.EducationYear.other.rawValue, AppConstants.EducationScreenConstants.EducationName.other.localized]
        ]
        self.view?.setLabelsData(twoDimensionalArrayForLabels: twoDimensionalArrayForLabels)
    }
}
