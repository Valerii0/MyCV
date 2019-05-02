//
//  InterestsHeaderTableViewCell.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/2/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

class InterestsHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var interestLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(with text: String) {
        interestLabel.text = text
        interestLabel.textAlignment = .center
        interestLabel.font = interestLabel.font.withSize(50)
    }
}
