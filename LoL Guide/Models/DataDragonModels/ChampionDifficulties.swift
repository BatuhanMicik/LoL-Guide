//
//  ChampionDifficulties.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.04.2022.
//

import Foundation

 struct ChampionDifficulties: Codable{
        let attack, defense, magic, difficulty: Double

        init(attack: Double, defense: Double, magic: Double, difficulty: Double) {
            self.attack = attack
            self.defense = defense
            self.magic = magic
            self.difficulty = difficulty
        }
    
}
