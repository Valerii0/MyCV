//
//  NameAndPhotoPresenter.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/29/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import Foundation

protocol NameAndPhotoView {

}

class NameAndPhotoPresenter {

    private var view: NameAndPhotoView?
    private var coordinator: MainCoordinator?

    init(view: NameAndPhotoView, coordinator: MainCoordinator) {
        self.view = view
        self.coordinator = coordinator
    }
}
