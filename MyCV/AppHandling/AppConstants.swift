//
//  AppConstants.swift
//  MyCV
//
//  Created by Valerii Petrychenko on 4/29/19.
//  Copyright © 2019 Valerii Petrychenko. All rights reserved.
//

import Foundation
import UIKit

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
        case interestsCellStar = "Interests/cellStar"
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

    enum SkillsScreenConstants {
        enum Common: String {
            case title = "Skills"
        }

        enum Headline: String {
            case programmingLanguages = "Programming Languages"
            case technologies = "Technologies"
            case graphic = "Graphic Experience"
        }

        enum HeadlinesBody: String {
            case programmingLanguages = " : C, C++, C#, Swift, JS, Python, AutoLISP"
            case technologies = " : "
            case graphic = " : AutoCad, Maya, 3ds Max, Blender"
        }

    }

    enum EducationScreenConstants {
        enum Common: String {
            case title = "Education"
        }
        static let animationDuration = 2.0

        enum educationName: String {
            case school = "School #247"
            case lyceum = "Dniprovsky Technical Lyceum (DTL)"
            case university = "National Technical University of Ukraine \"Igor Sikorsky Kyiv Polytechnic Institute\""
            case other = "Courses, books, articles, etc"
        }

        enum educationYear: String {
            case school = "2001 - 2010"
            case lyceum = "2010 - 2012"
            case university = "2012 - 2018"
            case other = "2012 - ..."
        }
    }

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

        enum InterestsHeightCells: CGFloat {
            case header = 200.0
            case section = 300.0
        }

    }
    

}
