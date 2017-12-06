//
//  Rank.swift
//  PokemonMasterKit
//
//  Created by kensuke-hoshikawa on 2017/12/06.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import Foundation

public enum Rank: String {
    case minus6 = "-6"
    case minus5 = "-5"
    case minus4 = "-4"
    case minus3 = "-3"
    case minus2 = "-2"
    case minus1 = "-1"
    case zero = "±0"
    case plus1 = "+1"
    case plus2 = "+2"
    case plus3 = "+3"
    case plus4 = "+4"
    case plus5 = "+5"
    case plus6 = "+6"
}

extension Rank {
    public var effect: Float {
        switch self {
        case .minus6:
            return 2 / 8
        case .minus5:
            return 2 / 7
        case .minus4:
            return 2 / 6
        case .minus3:
            return 2 / 5
        case .minus2:
            return 2 / 4
        case .minus1:
            return 2 / 3
        case .zero:
            return 2 / 2
        case .plus1:
            return 3 / 2
        case .plus2:
            return 4 / 2
        case .plus3:
            return 5 / 2
        case .plus4:
            return 6 / 2
        case .plus5:
            return 7 / 2
        case .plus6:
            return 8 / 2
        }
    }

    public var up: Rank {
        switch self {
        case .minus6:
            return .minus5
        case .minus5:
            return .minus4
        case .minus4:
            return .minus3
        case .minus3:
            return .minus2
        case .minus2:
            return .minus1
        case .minus1:
            return .zero
        case .zero:
            return .plus1
        case .plus1:
            return .plus2
        case .plus2:
            return .plus3
        case .plus3:
            return .plus4
        case .plus4:
            return .plus5
        case .plus5:
            return .plus6
        case .plus6:
            return .plus6
        }
    }

    public var down: Rank {
        switch self {
        case .minus6:
            return .minus6
        case .minus5:
            return .minus6
        case .minus4:
            return .minus5
        case .minus3:
            return .minus4
        case .minus2:
            return .minus3
        case .minus1:
            return .minus2
        case .zero:
            return .minus1
        case .plus1:
            return .zero
        case .plus2:
            return .plus1
        case .plus3:
            return .plus2
        case .plus4:
            return .plus3
        case .plus5:
            return .plus4
        case .plus6:
            return .plus5
        }
    }

    public var negative: Bool {
        return self.effect < Rank.zero.effect
    }

    public var positive: Bool {
        return self.effect > Rank.zero.effect
    }
}
