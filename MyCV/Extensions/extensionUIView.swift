//
//  extensionUIView.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/3/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

extension UIView {
    func fadeViewIn(duration: TimeInterval, delay: TimeInterval) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: { self.alpha = 1 }, completion: nil)
    }
}
