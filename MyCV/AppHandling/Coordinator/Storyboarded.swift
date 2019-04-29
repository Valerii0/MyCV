//
//  Storyboarded.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/28/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate(storyboardName name: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(storyboardName name: String) -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
