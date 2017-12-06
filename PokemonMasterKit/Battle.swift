//
//  Battle.swift
//  PokemonMasterKit
//
//  Created by kensuke-hoshikawa on 2017/12/06.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import Foundation

public protocol Battleable {
    var attackPokemon: PokemonProtocol { get }
    var defensePokemon: PokemonProtocol { get }

    init(attackPokemon: PokemonProtocol, defensePokemon: PokemonProtocol)

    func calculate() -> [Int]
}

public class Battle: Battleable {
    public let attackPokemon: PokemonProtocol
    public let defensePokemon: PokemonProtocol

    public required init(attackPokemon: PokemonProtocol, defensePokemon: PokemonProtocol) {
        self.attackPokemon = attackPokemon
        self.defensePokemon = defensePokemon
    }

    public func calculate() -> [Int] {
        var calcCount = 1

        let attackStat = calcAttackStat()
        print("attacStat", attackStat)
        let defenseStat = calcDefenseStat()
        print("defenseStat", defenseStat)
        var damages = calcDamage(attackStat: attackStat, defenseStat: defenseStat, power: Float(attackPokemon.move.power), calcCount: calcCount)
        print(damages)

        if attackPokemon.ability == .parentalBond {
            calcCount += 1
            let attackStat = calcAttackStat(isParentalBoldAndPowerUpPunch: attackPokemon.move == .powerUpPunch)
            print("attacStat", attackStat)
            let defenseStat = calcDefenseStat()
            print("defenseStat", defenseStat)
            let parentalBondDamages = calcDamage(attackStat: attackStat, defenseStat: defenseStat, power: Float(attackPokemon.move.power), calcCount: calcCount)
            print(parentalBondDamages)
            for (i, d) in parentalBondDamages.enumerated() {
                damages[i] += d
            }
        }

        return damages
    }

    private func calcAttackStat(isParentalBoldAndPowerUpPunch: Bool = false) -> Float {
        var stat: Int
        var rank: Rank
        switch attackPokemon.move.category {
        case .physical:
            stat = attackPokemon.attack
            rank = isParentalBoldAndPowerUpPunch ? attackPokemon.attackRank.up : attackPokemon.attackRank
        case .special:
            stat = attackPokemon.specialAttack
            rank = attackPokemon.specialAttackRank
        case .status:
            fatalError("cannot calclate Move.Category.status.")
        }

        return pokeRound(Float(stat) * rank.effect)
    }

    private func calcDefenseStat() -> Float {
        var stat: Int
        switch attackPokemon.move.category {
        case .physical:
            stat = defensePokemon.defense
        case .special:
            stat = attackPokemon.specialDefense
        case .status:
            fatalError("cannot calclate Move.Category.status.")
        }

        return Float(stat)
    }

    private func calcDamage(attackStat: Float, defenseStat: Float, power: Float, calcCount: Int) -> [Int] {
        let level = floorf((Float(attackPokemon.level * 2) / 5.0) + 2.0)
        let baseDamage = floorf(
            floorf(
                (level * attackStat * power) / defenseStat
            ) / 50
        ) + 2.0

        var damages: [Int] = []
        for i in 0...15 {
            var damage: Float = floor(baseDamage * Float(85 + i) / 100.0)

            if attackPokemon.has(type: attackPokemon.move.type) {
                damage = pokeRound(damage * 1.5)
            }

            if attackPokemon.ability == .parentalBond && calcCount == 2 {
                damage = pokeRound(damage * 0.25)
            }

            if damage < 1 { damage = 1 }
            damages.append(Int(damage))
        }

        return damages
    }

    private func pokeRound(_ num: Float) -> Float {
        return (num.truncatingRemainder(dividingBy: 1.0) > 0.5) ? ceilf(num) : floorf(num)
    }
}
