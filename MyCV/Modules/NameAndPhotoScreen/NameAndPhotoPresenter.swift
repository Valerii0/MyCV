//
//  NameAndPhotoPresenter.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/29/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import Foundation

protocol NameAndPhotoView: class {
    func showImage(imageUrl: String)
    func showFirstName(firstName: String)
    func showSecondName(secondName: String)
}

class NameAndPhotoPresenter {

    private weak var view: NameAndPhotoView?
    private var coordinator: MainCoordinator?

    init(view: NameAndPhotoView, coordinator: MainCoordinator) {
        self.view = view
        self.coordinator = coordinator
    }

    func provideImageUrl() {
        self.view?.showImage(imageUrl: AppConstants.AssetsConstants.myPhoto.rawValue)
    }

    func provideFirstName() {
        self.view?.showFirstName(firstName: AppConstants.NameAndPhotoScreenConstants.Content.name.localized)
    }

    func provideSecondName() {
        self.view?.showSecondName(secondName: AppConstants.NameAndPhotoScreenConstants.Content.surname.localized)
    }
}
