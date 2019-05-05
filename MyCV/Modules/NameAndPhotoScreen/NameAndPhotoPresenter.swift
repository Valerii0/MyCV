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
    func showFullName(owner: Owner)
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

    func provideFullName() {
        let owner = Owner(firstName: AppConstants.NameAndPhotoScreenConstants.Owner.firstName.localized,
                          secondName: AppConstants.NameAndPhotoScreenConstants.Owner.secondName.localized)

        self.view?.showFullName(owner: owner)
    }
}
