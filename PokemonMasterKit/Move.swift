//
//  Move.swift
//  PokemonMasterKit
//
//  Created by kensuke-hoshikawa on 2017/12/07.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import Foundation

public enum Move {
    case bite // かみつく
    case powerUpPunch // グロウパンチ


    public var power: Int {
        switch self {
        case .bite:
            return 60
        case .powerUpPunch:
            return 40
        }
    }

    public enum Category {
        case physical, special, status
    }

    public var category: Category {
        switch self {
        case .bite, .powerUpPunch:
            return .physical
        }
    }

    public var type: PokemonType {
        switch self {
        case .bite:
            return .dark
        case .powerUpPunch:
            return .fight
        }
    }
}
