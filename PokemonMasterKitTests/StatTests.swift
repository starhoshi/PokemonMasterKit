//
//  StatTests.swift
//  PokemonMasterKitTests
//
//  Created by ch3cooh.jp on 2017/12/06.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import XCTest
@testable import PokemonMasterKit

class StatTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    fileprivate func stat(_ hp: Int, _ attack: Int, _ defense: Int, _ specialAttack: Int, _ specialDefense: Int, _ speed: Int) -> BaseStats {
        return BaseStats(hp: hp, attack: attack, defense: defense, specialAttack: specialAttack, specialDefense: specialDefense, speed: speed)
    }
    
    fileprivate func effort(hp: Int = 0, attack: Int = 0, defense: Int = 0, specialAttack: Int = 0, specialDefense: Int = 0, speed: Int = 0) -> EffortValues {
        return EffortValues(hp: hp, attack: attack, defense: defense, specialAttack: specialAttack, specialDefense: specialDefense, speed: speed)
    }
    
    fileprivate func maxIndividualValues() -> IndividualValues {
        return IndividualValues(hp: 31, attack: 31, defense: 31, specialAttack: 31, specialDefense: 31, speed: 31)
    }
    
    func testミュウ無振() {
        let name = "ミュウ"
        let baseStats = stat(100, 100, 100, 100, 100, 100)
        let effortValues = effort()
        let individualValues = maxIndividualValues()
        let nature: Nature = .docile
        let move: Move = .bite
        let ability: Ability = .synchronize // FIXME

        let pokemon = Pokemon(name: name, baseStats: baseStats, effortValues: effortValues, individualValues: individualValues, nature: nature, type1: .electric, move: move, ability: ability)
        pokemon.level = 50

        //いじっぱり
        pokemon.nature = .adamant
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 132)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 108)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //うっかりや
        pokemon.nature = .rash
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 132)
        XCTAssertEqual(pokemon.specialDefense, 108)
        XCTAssertEqual(pokemon.speed, 120)
        
        //おくびょう
        pokemon.nature = .timid
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 108)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 132)

        //おだやか
        pokemon.nature = .calm
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 108)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 132)
        XCTAssertEqual(pokemon.speed, 120)
        
        //おっとり
        pokemon.nature = .mild
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 108)
        XCTAssertEqual(pokemon.specialAttack, 132)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //おとなしい
        pokemon.nature = .gentle
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 108)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 132)
        XCTAssertEqual(pokemon.speed, 120)
        
        //がんばりや
        pokemon.nature = .hardy
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //きまぐれ
        pokemon.nature = .quirky
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //さみしがり
        pokemon.nature = .lonely
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 132)
        XCTAssertEqual(pokemon.defense, 108)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //しんちょう
        pokemon.nature = .careful
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 108)
        XCTAssertEqual(pokemon.specialDefense, 132)
        XCTAssertEqual(pokemon.speed, 120)
        
        //すなお
        pokemon.nature = .docile
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //すぶとい
        pokemon.nature = .bold
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 108)
        XCTAssertEqual(pokemon.defense, 132)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //せっかち
        pokemon.nature = .hasty
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 108)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 132)
        
        //てれや
        pokemon.nature = .bashful
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //なまいき
        pokemon.nature = .sassy
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 132)
        XCTAssertEqual(pokemon.speed, 108)
        
        //のうてんき
        pokemon.nature = .lax
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 132)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 108)
        XCTAssertEqual(pokemon.speed, 120)
        
        //のんき
        pokemon.nature = .relaxed
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 132)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 108)
        
        //ひかえめ
        pokemon.nature = .modest
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 108)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 132)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //まじめ
        pokemon.nature = .serious
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
        
        //むじゃき
        pokemon.nature = .naive
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 108)
        XCTAssertEqual(pokemon.speed, 132)
        
        //やんちゃ
        pokemon.nature = .naughty
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 132)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 108)
        XCTAssertEqual(pokemon.speed, 120)
        
        //ゆうかん
        pokemon.nature = .brave
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 132)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 120)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 108)
        
        //ようき
        pokemon.nature = .jolly
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 108)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 132)
        
        //れいせい
        pokemon.nature = .quiet
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 120)
        XCTAssertEqual(pokemon.specialAttack, 132)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 108)
        
        //わんぱく
        pokemon.nature = .impish
        XCTAssertEqual(pokemon.hp, 175)
        XCTAssertEqual(pokemon.attack, 120)
        XCTAssertEqual(pokemon.defense, 132)
        XCTAssertEqual(pokemon.specialAttack, 108)
        XCTAssertEqual(pokemon.specialDefense, 120)
        XCTAssertEqual(pokemon.speed, 120)
    }

}
