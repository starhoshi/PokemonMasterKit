# PokemonMasterKit

 
[![Build Status](https://travis-ci.org/starhoshi/PokemonMasterKit.svg?branch=master)](https://travis-ci.org/starhoshi/PokemonMasterKit)

Pokemon utility library for Swift.

Aim to Be a Pokémon Master!

# Usage

## Calculate Pokemon stats

```swift
let name = "Pikachu"
let baseStats = BaseStats(hp: 35, attack: 55, defense: 40, specialAttack: 50, specialDefense: 50, speed: 90)
let effortValues = EffortValues(hp: 0, attack: 0, defense: 0, specialAttack: 0, specialDefense: 0, speed: 0)
let individualValues = IndividualValues(hp: 31, attack: 31, defense: 31, specialAttack: 31, specialDefense: 31, speed: 31)
let nature: Nature = .docile
let move: Move = .bite
let ability: Ability = .synchronize

let pikachu = Pokemon(name: name, baseStats: baseStats, effortValues: effortValues, individualValues: individualValues, nature: nature, type1: .electric, move: move, ability: ability)

print(pikachu.hp) // 110
print(pikachu.attack) // 75
print(pikachu.defense) // 60
print(pikachu.specialAttack) // 70
print(pikachu.specialDefense) // 70
print(pikachu.speed) // 110
```

## Damage Calculation

```swift
let battle = Battle(attackPokemon: megaKangaskhan, defensePokemon: pikachu)
print(battle.calculate())
// => [69, 69, 70, 71, 71, 72, 74, 74, 75, 76, 76, 77, 79, 79, 80, 81]
```
