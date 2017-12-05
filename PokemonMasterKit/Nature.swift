//
//  Nature.swift
//  PokemonMasterKit
//
//  Created by kensuke-hoshikawa on 2017/12/05.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import Foundation

public enum Nature {
    case adamant, rash, timid, calm, mild, gentle, hardy, quirky, lonely, careful, docile, bold, hasty, bashful, sassy, lax, relaxed, modest, serious, naive, naughty, brave, jolly, quiet, impish
}

extension Nature {
    var name: String {
        switch self {
        case .adamant:
            return "いじっぱり"
        case .rash:
            return "うっかりや"
        case .timid:
            return "おくびょう"
        case .calm:
            return "おだやか"
        case .mild:
            return "おっとり"
        case .gentle:
            return "おとなしい"
        case .hardy:
            return "がんばりや"
        case .quirky:
            return "きまぐれ"
        case .lonely:
            return "さみしがり"
        case .careful:
            return "しんちょう"
        case .docile:
            return "すなお"
        case .bold:
            return "ずぶとい"
        case .hasty:
            return "せっかち"
        case .bashful:
            return "てれや"
        case .sassy:
            return "なまいき"
        case .lax:
            return "のうてんき"
        case .relaxed:
            return "のんき"
        case .modest:
            return "ひかえめ"
        case .serious:
            return "まじめ"
        case .naive:
            return "むじゃき"
        case .naughty:
            return "やんちゃ"
        case .brave:
            return "ゆうかん"
        case .jolly:
            return "ようき"
        case .quiet:
            return "れいせい"
        case .impish:
            return "わんぱく"
        }
    }

    var effect: NatureEffect {
        switch self {
        case .adamant:
            return NatureEffect(hp: .notChange, attack: .increase, defense: .notChange, specialAttack: .decrease, specialDefense: .notChange, speed: .notChange)
        case .rash:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .increase, specialDefense: .decrease, speed: .notChange)
        case .timid:
            return NatureEffect(hp: .notChange, attack: .decrease, defense: .notChange, specialAttack: .notChange, specialDefense: .notChange, speed: .increase)
        case .calm:
            return NatureEffect(hp: .notChange, attack: .decrease, defense: .notChange, specialAttack: .notChange, specialDefense: .increase, speed: .notChange)
        case .mild:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .decrease, specialAttack: .increase, specialDefense: .notChange, speed: .notChange)
        case .gentle:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .decrease, specialAttack: .notChange, specialDefense: .increase, speed: .notChange)
        case .hardy:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .notChange, specialDefense: .notChange, speed: .notChange)
        case .quirky:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .notChange, specialDefense: .notChange, speed: .notChange)
        case .lonely:
            return NatureEffect(hp: .notChange, attack: .increase, defense: .decrease, specialAttack: .notChange, specialDefense: .notChange, speed: .notChange)
        case .careful:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .decrease, specialDefense: .increase, speed: .notChange)
        case .docile:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .notChange, specialDefense: .notChange, speed: .notChange)
        case .bold:
            return NatureEffect(hp: .notChange, attack: .decrease, defense: .increase, specialAttack: .notChange, specialDefense: .notChange, speed: .notChange)
        case .hasty:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .decrease, specialAttack: .notChange, specialDefense: .notChange, speed: .increase)
        case .bashful:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .notChange, specialDefense: .notChange, speed: .notChange)
        case .sassy:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .notChange, specialDefense: .increase, speed: .decrease)
        case .lax:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .increase, specialAttack: .notChange, specialDefense: .decrease, speed: .notChange)
        case .relaxed:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .increase, specialAttack: .notChange, specialDefense: .notChange, speed: .decrease)
        case .modest:
            return NatureEffect(hp: .notChange, attack: .decrease, defense: .notChange, specialAttack: .increase, specialDefense: .notChange, speed: .notChange)
        case .serious:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .notChange, specialDefense: .notChange, speed: .notChange)
        case .naive:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .notChange, specialDefense: .decrease, speed: .increase)
        case .naughty:
            return NatureEffect(hp: .notChange, attack: .increase, defense: .notChange, specialAttack: .notChange, specialDefense: .decrease, speed: .notChange)
        case .brave:
            return NatureEffect(hp: .notChange, attack: .increase, defense: .notChange, specialAttack: .notChange, specialDefense: .notChange, speed: .decrease)
        case .jolly:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .decrease, specialDefense: .notChange, speed: .increase)
        case .quiet:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .notChange, specialAttack: .increase, specialDefense: .notChange, speed: .decrease)
        case .impish:
            return NatureEffect(hp: .notChange, attack: .notChange, defense: .increase, specialAttack: .decrease, specialDefense: .notChange, speed: .notChange)
        }
    }
}

struct NatureEffect {
    public let hp: NatureEffectType
    public let attack: NatureEffectType
    public let defense: NatureEffectType
    public let specialAttack: NatureEffectType
    public let specialDefense: NatureEffectType
    public let speed: NatureEffectType
}

enum NatureEffectType: Float {
    case decrease = 0.9
    case notChange = 1.0
    case increase = 1.1
}
