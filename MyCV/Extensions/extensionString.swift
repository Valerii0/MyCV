//
//  extensionString.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 5/4/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import Foundation

extension String {
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
