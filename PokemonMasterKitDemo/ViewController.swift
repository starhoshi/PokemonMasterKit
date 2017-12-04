//
//  ViewController.swift
//  PokemonMasterKitDemo
//
//  Created by kensuke-hoshikawa on 2017/12/05.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let name = "ミュウ"
        let baseStats = BaseStats(hp: 100, attack: 100, defense: 100, specialAttack: 100, specialDefense: 100, speed: 100)
        let effortValues = EffortValues(hp: 0, attack: 0, defense: 0, specialAttack: 0, specialDefense: 0, speed: 0)
        let individualValues = IndividualValues(hp: 31, attack: 31, defense: 31, specialAttack: 31, specialDefense: 31, speed: 31)
        let nature: Nature = .calm

        let pokemon = Pokemon(name: name, baseStats: baseStats, effortValues: effortValues, individualValues: individualValues, nature: nature)
        print(pokemon.attack)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

