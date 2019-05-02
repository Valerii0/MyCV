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

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    var presenter: NameAndPhotoPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        configure()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        setUpImage(with: centerImage)
        setUpLabel(with: topLabel)
        setUpLabel(with: bottomLabel)
    }

    private func configure() {
        presenter.provideImageName()
        presenter.provideFirstName()
        presenter.provideSecondName()
    }

    private func setUpUI() {
        topView.backgroundColor = .blue
        bottomView.backgroundColor = .blue
    }

    private func setUpImage(with imageView: UIImageView) {

        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.blue.cgColor
        imageView.layer.borderWidth = imageView.frame.width / 30
    }

    private func setUpLabel(with label: UILabel) {

        label.textColor = .blue
        label.font = UIFont.systemFont(ofSize: 50)
        label.textAlignment = .center

        let gradientLAyer = CAGradientLayer()
        gradientLAyer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientLAyer.locations = [0, 0.5, 1]
        gradientLAyer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width)
        let angle = 90 * CGFloat.pi / 180
        gradientLAyer.transform = CATransform3DMakeRotation(angle, 0, 0, 1)
        label.layer.mask = gradientLAyer

        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.duration = 3
        animation.fromValue = -view.frame.width
        animation.toValue = view.frame.width
        animation.repeatCount = Float.infinity

        gradientLAyer.add(animation, forKey: nil)
    }
}

extension NameAndPhotoViewController: NameAndPhotoView {
    func showImage(imageUrl: String) {
        self.centerImage.image = UIImage(named: imageUrl)
        self.centerImage.contentMode = .scaleAspectFill
    }

    func showFirstName(firstName: String) {
        self.topLabel.text = firstName
    }

    func showSecondName(secondName: String) {
        self.bottomLabel.text = secondName
    }
}
