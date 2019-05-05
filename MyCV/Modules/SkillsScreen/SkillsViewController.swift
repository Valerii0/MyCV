//
//  SkillsViewController.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/1/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController, Storyboarded {

    @IBOutlet var labels: Array<UILabel>!

    @IBOutlet var views: Array<UIView>!

    @IBOutlet weak var bottomGearWheelImage: UIImageView!
    
    var presenter: SkillsPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        configure()
        rotateImage(targetView: bottomGearWheelImage, duration: AppConstants.SkillsScreenConstants.Animation.animationDuration.rawValue)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        makeAnimationLabels(with: labels, duration: AppConstants.SkillsScreenConstants.Animation.animationDuration.rawValue)
        addStarAnimationViews(with: views, duration: AppConstants.SkillsScreenConstants.Animation.animationDuration.rawValue)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        setAllLabelsAlphaZero(with: labels)
        removeStars(with: views)
    }

    private func configure() {
        presenter.provideTitle()
        presenter.provideImageUrl()
        presenter.provideTwoDimensionalArrayForLabels()
    }

    private func setUpUI() {
        setUpLabels(with: labels)
        setAllLabelsAlphaZero(with: labels)
    }

    private func setUpLabels(with labels: [UILabel]) {
        labels.forEach({ (label) in
            label.textColor = .blue
            label.textAlignment = .left
            label.font = UIFont(name: AppConstants.SkillsScreenConstants.Fonts.helveticaNeueBold.rawValue,
                                size: AppConstants.SkillsScreenConstants.FontsSize.helveticaNeueBold.rawValue)
            label.numberOfLines = 0
        })
    }

    private func setAllLabelsAlphaZero(with labels: [UILabel]) {
        labels.forEach({$0.alpha = 0})
    }

    private func removeStars(with views: [UIView]) {
        views.forEach({$0.layer.sublayers?.removeAll()})
    }

    private func makeAnimationLabels(with arisingLabels: [UILabel], duration: Double) {
        let singleDuration = duration / Double(arisingLabels.count)
        for arrayIndex in 0..<arisingLabels.count {
            arisingLabels[arrayIndex].fadeViewIn(duration: singleDuration, delay: singleDuration * Double(arrayIndex))
        }
    }

    private func addStarAnimationViews(with views: [UIView], duration: Double) {
        for view in views {
            starAnimation(view: view, duration: duration)
        }
    }

    private func starAnimation(view: UIView, duration: Double) {
        let starPath = PathBuilder.buildStar()

        let starLayer = CAShapeLayer()
        starLayer.path = starPath.cgPath
        starLayer.fillColor = UIColor.clear.cgColor
        starLayer.strokeColor = UIColor.blue.cgColor
        starLayer.lineWidth = 5.0
        starLayer.strokeEnd = 0.0

        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = duration
        animation.fromValue = 0
        animation.toValue = 1
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        starLayer.strokeEnd = 1.0
        starLayer.add(animation, forKey: "animateStar")

        view.layer.addSublayer(starLayer)
    }

    private func rotateImage(targetView: UIImageView, duration: Double) {
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            targetView.transform = targetView.transform.rotated(by: .pi)
        }) { finished in
            self.rotateImage(targetView: targetView, duration: duration)
        }
    }
}

extension SkillsViewController: SkillsView {
    func setNavigationTitle(title: String) {
        navigationItem.title = title
    }

    func showImage(imageUrl: String) {
        self.bottomGearWheelImage.image = UIImage(named: imageUrl)
        self.bottomGearWheelImage.contentMode = .scaleAspectFill
    }

    func setLabelsData(twoDimensionalArrayForLabels: [[String]]) {
        if labels.count == twoDimensionalArrayForLabels.count {
            for labelIndex in 0..<self.labels.count {
                self.labels[labelIndex].text = twoDimensionalArrayForLabels[labelIndex][0] + ": " + twoDimensionalArrayForLabels[labelIndex][1]
            }
        }
    }
}
