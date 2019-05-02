//
//  InterestsTableViewCell.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/2/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class InterestsTableViewCell: UITableViewCell {

    @IBOutlet weak var interestImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(with imageUrl: String) {
        interestImage.image = UIImage(named: imageUrl)
        interestImage.contentMode = .scaleAspectFill
    }
}
