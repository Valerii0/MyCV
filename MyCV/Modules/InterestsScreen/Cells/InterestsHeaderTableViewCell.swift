//
//  InterestsHeaderTableViewCell.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/2/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class InterestsHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var interestLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        setUpUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    private func setUpUI() {
        backgroundImage.image = UIImage(named: AppConstants.AssetsConstants.interestsCellStar.rawValue)
        backgroundImage.contentMode = .scaleAspectFill

        rotateView(targetView: backgroundImage,
                   duration: AppConstants.InterestsScreenConstants.Animation.animationDurationForStarRotating.rawValue)
    }

    private func rotateView(targetView: UIView, duration: Double) {
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            targetView.transform = targetView.transform.rotated(by: .pi)
        }) { finished in
            self.rotateView(targetView: targetView, duration: duration)
        }
    }

    func configure(with text: String) {
        interestLabel.text = text
        interestLabel.textAlignment = .center
        interestLabel.font = interestLabel.font.withSize(AppConstants.InterestsScreenConstants.FontsSize.size.rawValue)
    }
}
