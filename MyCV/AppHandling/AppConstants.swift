//
//  AppConstants.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/29/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import Foundation

enum AppConstants {

    enum AssetsConstants: String {
        case myPhoto = "NameAndPhoto/myPhoto"
        case tabBarCard = "TabBar/card"
        case tabBarIntellectual = "TabBar/intellectual"
        case tabBarStudent = "TabBar/student"
        case tabBarStar = "TabBar/star"
        case interestsGym = "Interests/gym"
        case interestsStadium = "Interests/oldTrafford"
        case interestsMac = "Interests/mac"
    }

    enum tabBarTitleConstants: String {
        case i = "I"
        case skills = "Skills"
        case education = "Education"
        case interests = "Interests"
    }

    enum NameAndPhotoScreenConstants: String {
        case name = "Valerii"
        case surname = "Petrychenko"
    }

//    struct SkillsScreenConstants {
//
//    }

    enum InterestsScreenConstants {
        enum Common: String {
            case title = "Interests"
        }

        enum Interests: String {
            case gym = "Gym"
            case coding = "Coding"
            case football = "Football"
        }

        enum InterestsCells: String {
            case headerName = "InterestsHeaderTableViewCell"
            case sectionName = "InterestsTableViewCell"
        }

    }
    

}
