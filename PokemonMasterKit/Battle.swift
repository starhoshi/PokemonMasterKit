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

    required public init(attackPokemon: PokemonProtocol, defensePokemon: PokemonProtocol) {
        self.attackPokemon = attackPokemon
        self.defensePokemon = defensePokemon
    }

    public func calculate() -> [Int] {
        

        return []
    }
}
