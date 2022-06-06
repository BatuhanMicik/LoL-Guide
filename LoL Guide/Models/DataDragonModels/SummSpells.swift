//
//  SummonerSpells.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.05.2022.
//

import Foundation

struct SumSpells: Codable {
    let data: [String: SumSpellDatum]
}

// MARK: - Datum
struct SumSpellDatum: Codable {
    let id, name, datumDescription, tooltip: String
    let maxrank: Int
    let cooldown: [Int]
    let cooldownBurn: String
    let cost: [Int]
    let costBurn: String
 
    let effect: [[Double]?]
    let effectBurn: [String?]
    
    let key: String
    let summonerLevel: Int
    let modes: [String]
    let costType: SumCostType
    let maxammo: String
    let range: [Int]
    let rangeBurn: String
    let image: ImageSum
    let resource: CostType

    enum CodingKeys: String, CodingKey {
        case id, name
        case datumDescription = "description"
        case tooltip, maxrank, cooldown, cooldownBurn, cost, costBurn, effect, effectBurn, key, summonerLevel, modes, costType, maxammo, range, rangeBurn, image, resource
    }
}

enum SumCostType: String, Codable {
    case nbsp = "&nbsp;"
    case noCost = "No Cost"
}



// MARK: - Image
struct ImageSum: Codable {
    let full: String
    let sprite: SumSpellSprite
    let group: SumSpellGroup
    let x, y, w, h: Int
}

enum SumSpellGroup: String, Codable {
    case spell = "spell"
}

enum SumSpellSprite: String, Codable {
    case spell0PNG = "spell0.png"
}

