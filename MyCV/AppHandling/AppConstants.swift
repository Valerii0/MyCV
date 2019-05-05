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
        case tabBarCard = "TabBar/card"
        case tabBarIntellectual = "TabBar/intellectual"
        case tabBarStudent = "TabBar/student"
        case tabBarStar = "TabBar/star"
        case myPhoto = "NameAndPhoto/myPhoto"
        case wheel = "Skills/wheel"
        case interestsCellStar = "Interests/cellStar"
        case interestsMac = "Interests/mac"
        case interestsAI = "Interests/ai"
        case interestsGym = "Interests/gym"
        case interestsStadium = "Interests/oldTrafford"
        case interestsTraveling = "Interests/travel"
    }

    enum TabBarTitleConstants: String {
        case iAm = "Photo"
        case skills = "Skills"
        case education = "Education"
        case interests = "Interests"

        var localized: String {
            return self.rawValue.localized()
        }
    }

    enum NameAndPhotoScreenConstants {
        enum Owner: String {
            case firstName = "Valerii"
            case secondName = "Petrychenko"

            var localized: String {
                return self.rawValue.localized()
            }
        }

        enum Animation: Double {
            case animationDuration = 3.0
        }

        enum FontsSize: CGFloat {
            case size = 50.0
        }
    }

    enum SkillsScreenConstants {
        enum Headline: String {
            case programmingLanguages = "Programming Languages"
            case ides = "IDE"
            case generalKnowledge = "General Knowledge"
            case graphic = "Graphic Experience"

            var localized: String {
                return self.rawValue.localized()
            }
        }

        enum HeadlinesBody: String {
            case programmingLanguages = "C, C++, C#, Swift, JS, Python, AutoLISP"
            case ides = "Xcode, Visual Studio, Unity, PyCharm"
            case generalKnowledge = "SOLID, OOP, Design Patterns, RESTful (JSON/XML) Web Service, IOS SDK, UIKit, Autolayout, GCD, CocoaPods"
            case graphic = "AutoCad, Maya, 3ds Max, Blender"
        }

        enum Animation: Double {
            case animationDuration = 4.0
        }

        enum Fonts: String {
            case helveticaNeueBold = "HelveticaNeue-Bold"
        }

        enum FontsSize: CGFloat {
            case helveticaNeueBold = 16.0
        }
    }

    enum EducationScreenConstants {
        enum EducationName: String {
            case school = "School #247"
            case lyceum = "Dniprovsky Technical Lyceum (DTL)"
            case university = "National Technical University of Ukraine \"Igor Sikorsky Kyiv Polytechnic Institute\""
            case other = "Courses, books, articles, etc"

            var localized: String {
                return self.rawValue.localized()
            }
        }

        enum EducationYear: String {
            case school = "2001 - 2010"
            case lyceum = "2010 - 2012"
            case university = "2012 - 2018"
            case other = "2012 - ..."
        }

        enum Animation: Double {
            case animationDuration = 2.0
        }

        enum Fonts: String {
            case helveticaNeueBold = "HelveticaNeue-Bold"
        }

        enum FontsSize: CGFloat {
            case helveticaNeueBold = 16.0
        }
    }

    enum InterestsScreenConstants {
        enum Interests: String {
            case coding = "Coding"
            case ai = "Artificial Intelligence"
            case gym = "Gym"
            case football = "Football"
            case traveling = "Traveling"

            var localized: String {
                return self.rawValue.localized()
            }
        }

        enum InterestsCells: String {
            case headerName = "InterestsHeaderTableViewCell"
            case sectionName = "InterestsTableViewCell"
        }

        enum InterestsHeightCells: CGFloat {
            case header = 200.0
            case section = 300.0
        }

        enum Animation: Double {
            case animationDurationForStarRotating = 3.0
        }

        enum Fonts: String {
            case helveticaNeueBold = "HelveticaNeue-Bold"
        }

        enum FontsSize: CGFloat {
            case size = 25.0
        }
    }
}
