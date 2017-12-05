//
//  NatureTests.swift
//  PokemonMasterKitTests
//
//  Created by ch3cooh.jp on 2017/12/06.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import XCTest
@testable import PokemonMasterKit

class NatureTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test性格いじっぱり() {
        let nature = Nature.adamant
        XCTAssertEqual(nature.name, "いじっぱり")
        XCTAssertEqual(nature.effect.attack, .increase)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .decrease)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }

    func test性格てれや() {
        let nature = Nature.bashful
        XCTAssertEqual(nature.name, "てれや")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格ずぶとい() {
        let nature = Nature.bold
        XCTAssertEqual(nature.name, "ずぶとい")
        XCTAssertEqual(nature.effect.attack, .decrease)
        XCTAssertEqual(nature.effect.defense, .increase)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格ゆうかん() {
        let nature = Nature.brave
        XCTAssertEqual(nature.name, "ゆうかん")
        XCTAssertEqual(nature.effect.attack, .increase)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .decrease)
    }
    
    func test性格おだやか() {
        let nature = Nature.calm
        XCTAssertEqual(nature.name, "おだやか")
        XCTAssertEqual(nature.effect.attack, .decrease)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .increase)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格しんちょう() {
        let nature = Nature.careful
        XCTAssertEqual(nature.name, "しんちょう")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .decrease)
        XCTAssertEqual(nature.effect.specialDefense, .increase)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格すなお() {
        let nature = Nature.docile
        XCTAssertEqual(nature.name, "すなお")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格おとなしい() {
        let nature = Nature.gentle
        XCTAssertEqual(nature.name, "おとなしい")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .decrease)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .increase)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格がんばりや() {
        let nature = Nature.hardy
        XCTAssertEqual(nature.name, "がんばりや")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格せっかち() {
        let nature = Nature.hasty
        XCTAssertEqual(nature.name, "せっかち")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .decrease)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .increase)
    }
    
    func test性格わんぱく() {
        let nature = Nature.impish
        XCTAssertEqual(nature.name, "わんぱく")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .increase)
        XCTAssertEqual(nature.effect.specialAttack, .decrease)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格ようき() {
        let nature = Nature.jolly
        XCTAssertEqual(nature.name, "ようき")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .decrease)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .increase)
    }
    
    func test性格のうてんき() {
        let nature = Nature.lax
        XCTAssertEqual(nature.name, "のうてんき")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .increase)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .decrease)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格さみしがり() {
        let nature = Nature.lonely
        XCTAssertEqual(nature.name, "さみしがり")
        XCTAssertEqual(nature.effect.attack, .increase)
        XCTAssertEqual(nature.effect.defense, .decrease)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格おっとり() {
        let nature = Nature.mild
        XCTAssertEqual(nature.name, "おっとり")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .decrease)
        XCTAssertEqual(nature.effect.specialAttack, .increase)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格ひかえめ() {
        let nature = Nature.modest
        XCTAssertEqual(nature.name, "ひかえめ")
        XCTAssertEqual(nature.effect.attack, .decrease)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .increase)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格むじゃき() {
        let nature = Nature.naive
        XCTAssertEqual(nature.name, "むじゃき")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .decrease)
        XCTAssertEqual(nature.effect.speed, .increase)
    }
    
    func test性格やんちゃ() {
        let nature = Nature.naughty
        XCTAssertEqual(nature.name, "やんちゃ")
        XCTAssertEqual(nature.effect.attack, .increase)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .decrease)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格れいせい() {
        let nature = Nature.quiet
        XCTAssertEqual(nature.name, "れいせい")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .increase)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .decrease)
    }
    
    func test性格きまぐれ() {
        let nature = Nature.quirky
        XCTAssertEqual(nature.name, "きまぐれ")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格うっかりや() {
        let nature = Nature.rash
        XCTAssertEqual(nature.name, "うっかりや")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .increase)
        XCTAssertEqual(nature.effect.specialDefense, .decrease)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格のんき() {
        let nature = Nature.relaxed
        XCTAssertEqual(nature.name, "のんき")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .increase)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .decrease)
    }
    
    func test性格なまいき() {
        let nature = Nature.sassy
        XCTAssertEqual(nature.name, "なまいき")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .increase)
        XCTAssertEqual(nature.effect.speed, .decrease)
    }
    
    func test性格まじめ() {
        let nature = Nature.serious
        XCTAssertEqual(nature.name, "まじめ")
        XCTAssertEqual(nature.effect.attack, .notChange)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .notChange)
    }
    
    func test性格おくびょう() {
        let nature = Nature.timid
        XCTAssertEqual(nature.name, "おくびょう")
        XCTAssertEqual(nature.effect.attack, .decrease)
        XCTAssertEqual(nature.effect.defense, .notChange)
        XCTAssertEqual(nature.effect.specialAttack, .notChange)
        XCTAssertEqual(nature.effect.specialDefense, .notChange)
        XCTAssertEqual(nature.effect.speed, .increase)
    }
}
