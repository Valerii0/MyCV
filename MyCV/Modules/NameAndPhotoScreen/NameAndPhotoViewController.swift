//
//  NameAndPhotoViewController.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/29/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class NameAndPhotoViewController: UIViewController, Storyboarded {

    var presenter: NameAndPhotoPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

extension NameAndPhotoViewController: NameAndPhotoView {

}
