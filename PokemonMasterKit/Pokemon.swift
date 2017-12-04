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

public class Test {
    init() {

    }
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

    var attack: Int {
        let float = Float((baseStats.attack * 2) + individualValues.attack + (effortValues.attack / 4))
        let base = Int((float * (Float(level) / 100)) + 5)
        return Int(Float(base) * 1.0)
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

public enum StatusType {
    case hp, attack, defense, specialAttack, specialDefense, speed
}

public enum Nature {
    case calm

    public var up: StatusType {
        return .speed
    }
    public var down: StatusType {
        return .attack
    }
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

