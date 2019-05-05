//
//  EducationViewController.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/2/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class EducationViewController: UIViewController, Storyboarded {

    @IBOutlet weak var roadView: UIView!

    @IBOutlet weak var firstLeftLabel: UILabel!
    @IBOutlet weak var firstRightLabel: UILabel!
    @IBOutlet weak var secondLeftLabel: UILabel!
    @IBOutlet weak var secondRightLabel: UILabel!
    @IBOutlet weak var thirdLeftLabel: UILabel!
    @IBOutlet weak var thirdRightLabel: UILabel!
    @IBOutlet weak var fourthLeftLabel: UILabel!
    @IBOutlet weak var fourthRightLabel: UILabel!

    var presenter: EducationPresenter!

    var arisingLabels = [[UILabel]]()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        configure()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        makeAnimationRoad(with: roadView, duration: AppConstants.EducationScreenConstants.Animation.animationDuration.rawValue)
        makeAnimationLabels(with: arisingLabels, duration: AppConstants.EducationScreenConstants.Animation.animationDuration.rawValue)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        setAllLabelsAlphaZero(with: arisingLabels)
        clearAnimationRoad(with: roadView)
    }

    private func configure() {
        presenter.provideTitle()
        presenter.provideTwoDimensionalArrayForLabels()
    }

    private func setUpUI() {
        makeLabelsArray()
        setUpLabels(with: arisingLabels)
        setAllLabelsAlphaZero(with: arisingLabels)
    }

    private func makeLabelsArray() {
        arisingLabels = [
            [firstLeftLabel, firstRightLabel],
            [secondLeftLabel, secondRightLabel],
            [thirdLeftLabel, thirdRightLabel],
            [fourthLeftLabel, fourthRightLabel]
        ]
    }

    private func setUpLabels(with labels: [[UILabel]]) {
        labels.flatMap({$0}).forEach { (label) in
            label.textColor = .blue
            label.textAlignment = .center
            label.font = UIFont(name: AppConstants.EducationScreenConstants.Fonts.helveticaNeueBold.rawValue,
                                size: AppConstants.EducationScreenConstants.FontsSize.helveticaNeueBold.rawValue)
            label.numberOfLines = 0
        }
    }

    private func setAllLabelsAlphaZero(with labels: [[UILabel]]) {
        labels.flatMap({$0}).forEach({$0.alpha = 0})
    }

    private func clearAnimationRoad(with roadView: UIView) {
        roadView.layer.sublayers?.removeAll()
    }

    private func makeAnimationLabels(with arisingLabels: [[UILabel]], duration: Double) {
        let singleDuration = duration / Double(arisingLabels.count)
        for arrayIndex in 0..<arisingLabels.count {
            for elementIndex in 0..<arisingLabels[arrayIndex].count {
                arisingLabels[arrayIndex][elementIndex].fadeViewIn(duration: singleDuration, delay: singleDuration * Double(arrayIndex))
            }
        }
    }

    private func makeAnimationRoad(with roadView: UIView, duration: Double) {
        let gradientLAyer = CAGradientLayer()
        gradientLAyer.colors = [UIColor.white.cgColor, UIColor.blue.cgColor]
        gradientLAyer.locations = [0, 1]
        gradientLAyer.frame = CGRect(x: 0, y: 0, width: roadView.frame.width, height: roadView.frame.height)

        let animation = CABasicAnimation(keyPath: "transform.translation.y")
        animation.duration = duration
        animation.fromValue = -roadView.frame.height
        animation.toValue = 0.0

        gradientLAyer.add(animation, forKey: nil)

        roadView.layer.addSublayer(gradientLAyer)
    }
}

extension EducationViewController: EducationView {
    func setNavigationTitle(title: String) {
        navigationItem.title = title
    }
    
    func setLabelsData(twoDimensionalArrayForLabels: [[String]]) {
        if arisingLabels.count == twoDimensionalArrayForLabels.count {
            for arrayIndex in 0..<arisingLabels.count {
                for elementIndex in 0..<arisingLabels[arrayIndex].count {
                    arisingLabels[arrayIndex][elementIndex].text = twoDimensionalArrayForLabels[arrayIndex][elementIndex]
                }
            }
        }
    }
}
