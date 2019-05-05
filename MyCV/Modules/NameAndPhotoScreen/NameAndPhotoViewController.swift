//
//  NameAndPhotoViewController.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/29/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class NameAndPhotoViewController: UIViewController, Storyboarded {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!

    @IBOutlet weak var centerImage: UIImageView!

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    
    var presenter: NameAndPhotoPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        configure()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        makeAnimationLabel(with: firstNameLabel, duration: AppConstants.NameAndPhotoScreenConstants.Animation.animationDuration.rawValue)
        makeAnimationLabel(with: secondNameLabel, duration: AppConstants.NameAndPhotoScreenConstants.Animation.animationDuration.rawValue)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        clearAnimationFromLabel(with: firstNameLabel)
        clearAnimationFromLabel(with: secondNameLabel)
    }

    private func configure() {
        presenter.provideImageUrl()
        presenter.provideFullName()
    }

    private func setUpUI() {
        setUpBackgroundsColor()
        setUpLabel(with: firstNameLabel)
        setUpLabel(with: secondNameLabel)
        setUpImage(with: centerImage)
    }

    private func setUpBackgroundsColor() {
        topView.backgroundColor = .blue
        bottomView.backgroundColor = .blue
    }

    private func setUpLabel(with label: UILabel) {
        label.textColor = .blue
        label.font = UIFont.systemFont(ofSize: AppConstants.NameAndPhotoScreenConstants.FontsSize.size.rawValue)
        label.textAlignment = .center
    }

    private func setUpImage(with imageView: UIImageView) {
        imageView.layoutIfNeeded()
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.blue.cgColor
        imageView.layer.borderWidth = imageView.frame.width / 30
    }

    private func makeAnimationLabel(with label: UILabel, duration: Double) {
        let gradientLAyer = CAGradientLayer()
        gradientLAyer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientLAyer.locations = [0, 0.5, 1]
        gradientLAyer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width)
        let angle = 90 * CGFloat.pi / 180
        gradientLAyer.transform = CATransform3DMakeRotation(angle, 0, 0, 1)
        label.layer.mask = gradientLAyer

        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.duration = duration
        animation.fromValue = -view.frame.width
        animation.toValue = view.frame.width
        animation.repeatCount = Float.infinity

        gradientLAyer.add(animation, forKey: nil)
    }

    private func clearAnimationFromLabel(with label: UILabel) {
        label.layer.sublayers?.removeAll()
    }
}

extension NameAndPhotoViewController: NameAndPhotoView {
    func showImage(imageUrl: String) {
        self.centerImage.image = UIImage(named: imageUrl)
        self.centerImage.contentMode = .scaleAspectFill
    }

    func showFullName(owner: Owner) {
        self.firstNameLabel.text = owner.firstName
        self.secondNameLabel.text = owner.secondName
    }
}
