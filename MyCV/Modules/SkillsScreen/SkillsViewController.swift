//
//  SkillsViewController.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/1/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController, Storyboarded {

    var presenter: SkillsPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.blue
        setUpUI()
        configure()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }

    private func setUpUI() {

    }

    private func configure() {
        presenter.provideTitle()
    }
}


extension SkillsViewController: SkillsView {
    func setNavigationTitle(title: String) {
        navigationItem.title = title
    }

}
