//
//  Pokemons.swift
//  PokemonMasterKit
//
//  Created by kensuke-hoshikawa on 2017/12/05.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import Foundation

public protocol PokemonProtocol {
    var name: String { get }
    var baseStats: BaseStats { get }
}

public class Pokemon {
    let name: String
    let baseStats: BaseStats
    var effortValues: EffortValues
    var individualValues: IndividualValues
    var nature: Nature
    var level: Int = 50

    init(name: String, baseStats: BaseStats, effortValues: EffortValues, individualValues: IndividualValues, nature: Nature) {
        self.name = name
        self.baseStats = baseStats
        self.effortValues = effortValues
        self.individualValues = individualValues
        self.nature = nature
    }

    var hp: Int {
        let temp = Float((baseStats.hp * 2) + individualValues.hp + (effortValues.hp / 4)) * (Float(level) / 100)
        return Int(temp) + level + 10
    }

    var attack: Int {
        return calcStat(baseStat: baseStats.attack, individualValue: individualValues.attack, effortValue: effortValues.attack, natureEffectType: nature.effect.attack)
    }

    var defense: Int {
        return calcStat(baseStat: baseStats.defense, individualValue: individualValues.defense, effortValue: effortValues.defense, natureEffectType: nature.effect.defense)
    }

    var specialAttack: Int {
        return calcStat(baseStat: baseStats.specialAttack, individualValue: individualValues.specialAttack, effortValue: effortValues.specialAttack, natureEffectType: nature.effect.specialAttack)
    }

    var specialDefense: Int {
        return calcStat(baseStat: baseStats.specialDefense, individualValue: individualValues.specialDefense, effortValue: effortValues.specialDefense, natureEffectType: nature.effect.specialDefense)
    }

    var speed: Int {
        return calcStat(baseStat: baseStats.speed, individualValue: individualValues.speed, effortValue: effortValues.speed, natureEffectType: nature.effect.speed)
    }

    private func calcStat(baseStat: Int, individualValue: Int, effortValue: Int, natureEffectType: NatureEffectType) -> Int {
        let temp1 = Float((baseStat * 2) + individualValue + (effortValue / 4))
        let temp2 = Int((temp1 * (Float(level) / 100)) + 5)
        return Int(Float(temp2) * natureEffectType.rawValue)
    }
}

public protocol PokemonStatus {
    var hp: Int { get }
    var attack: Int { get }
    var defense: Int { get }
    var specialAttack: Int { get }
    var specialDefense: Int { get }
    var speed: Int { get }
}

public class BaseStats: PokemonStatus {
    public let hp: Int
    public let attack: Int
    public let defense: Int
    public let specialAttack: Int
    public let specialDefense: Int
    public let speed: Int

    public init(hp: Int, attack: Int, defense: Int, specialAttack: Int, specialDefense: Int, speed: Int) {
        self.hp = hp
        self.attack = attack
        self.defense = defense
        self.specialAttack = specialAttack
        self.specialDefense = specialDefense
        self.speed = speed
    }
}

public class EffortValues: PokemonStatus {
    public var hp: Int
    public var attack: Int
    public var defense: Int
    public var specialAttack: Int
    public var specialDefense: Int
    public var speed: Int

    public init(hp: Int, attack: Int, defense: Int, specialAttack: Int, specialDefense: Int, speed: Int) {
        self.hp = hp
        self.attack = attack
        self.defense = defense
        self.specialAttack = specialAttack
        self.specialDefense = specialDefense
        self.speed = speed
    }
}

public class IndividualValues: PokemonStatus {
    public var hp: Int
    public var attack: Int
    public var defense: Int
    public var specialAttack: Int
    public var specialDefense: Int
    public var speed: Int

    public init(hp: Int, attack: Int, defense: Int, specialAttack: Int, specialDefense: Int, speed: Int) {
        self.hp = hp
        self.attack = attack
        self.defense = defense
        self.specialAttack = specialAttack
        self.specialDefense = specialDefense
        self.speed = speed
    }
}

