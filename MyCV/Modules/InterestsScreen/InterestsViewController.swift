//
//  InterestsViewController.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/1/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class InterestsViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var interestsTableView: UITableView!

    var presenter: InterestsPresenter!
    
    var cellsData: [CellsModel]!

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        interestsTableView.reloadWithAnimation()
    }

    private func configure() {
        interestsTableView.register(UINib(nibName: AppConstants.InterestsScreenConstants.InterestsCells.headerName.rawValue, bundle: nil),
                                    forCellReuseIdentifier: AppConstants.InterestsScreenConstants.InterestsCells.headerName.rawValue)


        interestsTableView.register(UINib(nibName: AppConstants.InterestsScreenConstants.InterestsCells.sectionName.rawValue, bundle: nil),
                                    forCellReuseIdentifier: AppConstants.InterestsScreenConstants.InterestsCells.sectionName.rawValue)

        interestsTableView.delegate = self
        interestsTableView.dataSource = self

        presenter.provideTitle()
        presenter.provideCellsData()
    }

}

extension InterestsViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return cellsData.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if cellsData[section].opened == true {
            return 2
        } else {
            return 1
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = interestsTableView.dequeueReusableCell(withIdentifier: AppConstants.InterestsScreenConstants.InterestsCells.headerName.rawValue, for: indexPath) as! InterestsHeaderTableViewCell
            cell.configure(with: cellsData[indexPath.section].title)
            return cell
        } else {
            let cell = interestsTableView.dequeueReusableCell(withIdentifier: AppConstants.InterestsScreenConstants.InterestsCells.sectionName.rawValue, for: indexPath) as! InterestsTableViewCell
            cell.configure(with: cellsData[indexPath.section].sectionData)
            return cell
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if cellsData[indexPath.section].opened == true {
            cellsData[indexPath.section].opened = false
        } else {
            cellsData[indexPath.section].opened = true
        }
        let sections = IndexSet(integer: indexPath.section)
        interestsTableView.reloadSections(sections, with: .fade)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return AppConstants.InterestsScreenConstants.InterestsHeightCells.header.rawValue
        } else {
            return AppConstants.InterestsScreenConstants.InterestsHeightCells.section.rawValue
        }
    }
}

extension InterestsViewController: InterestsView {
    func setNavigationTitle(title: String) {
        navigationItem.title = title
    }

    func setCellsArray(cellsDataArray: [CellsModel]) {
        cellsData = cellsDataArray
    }
}
