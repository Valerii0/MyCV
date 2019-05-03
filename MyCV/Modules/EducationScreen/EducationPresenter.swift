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
        self.view?.setNavigationTitle(title: AppConstants.EducationScreenConstants.Common.title.rawValue)
    }

    func provideTwoDimensionalArrayForLabels() {
        let twoDimensionalArrayForLabels: [[String]] = [
            [AppConstants.EducationScreenConstants.educationName.school.rawValue, AppConstants.EducationScreenConstants.educationYear.school.rawValue],
            [AppConstants.EducationScreenConstants.educationYear.lyceum.rawValue, AppConstants.EducationScreenConstants.educationName.lyceum.rawValue],
            [AppConstants.EducationScreenConstants.educationName.university.rawValue, AppConstants.EducationScreenConstants.educationYear.university.rawValue],
            [AppConstants.EducationScreenConstants.educationYear.other.rawValue, AppConstants.EducationScreenConstants.educationName.other.rawValue]
        ]
        self.view?.setLabelsData(twoDimensionalArrayForLabels: twoDimensionalArrayForLabels)
    }
}
