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
    var effortValues: EffortValues { get set }
    var individualValues: IndividualValues { get set }
    var nature: Nature { get set }
    var level: Int { get set }
}

public class Pokemon {
    public let name: String
    public let baseStats: BaseStats
    public var effortValues: EffortValues
    public var individualValues: IndividualValues
    public var nature: Nature
    public var level: Int = 50

    public init(name: String, baseStats: BaseStats, effortValues: EffortValues, individualValues: IndividualValues, nature: Nature) {
        self.name = name
        self.baseStats = baseStats
        self.effortValues = effortValues
        self.individualValues = individualValues
        self.nature = nature
    }

    public var hp: Int {
        let temp = Float((baseStats.hp * 2) + individualValues.hp + (effortValues.hp / 4)) * (Float(level) / 100)
        return Int(temp) + level + 10
    }

    public var attack: Int {
        return calcStat(baseStat: baseStats.attack, individualValue: individualValues.attack, effortValue: effortValues.attack, natureEffectType: nature.effect.attack)
    }

    public var defense: Int {
        return calcStat(baseStat: baseStats.defense, individualValue: individualValues.defense, effortValue: effortValues.defense, natureEffectType: nature.effect.defense)
    }

    public var specialAttack: Int {
        return calcStat(baseStat: baseStats.specialAttack, individualValue: individualValues.specialAttack, effortValue: effortValues.specialAttack, natureEffectType: nature.effect.specialAttack)
    }

    public var specialDefense: Int {
        return calcStat(baseStat: baseStats.specialDefense, individualValue: individualValues.specialDefense, effortValue: effortValues.specialDefense, natureEffectType: nature.effect.specialDefense)
    }

    public var speed: Int {
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

