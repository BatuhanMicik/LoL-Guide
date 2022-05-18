//
//  Basic.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 11.05.2022.
//

import Foundation

struct Basic: Codable {
    let name: String
    let rune: Rune
    let gold: Gold
    let group, basicDescription, colloq, plaintext: String
    let consumed: Bool
    let stacks, depth: Int
    let consumeOnFull: Bool
    let from, into: [String?]
    let specialRecipe: Int
    let inStore, hideFromAll: Bool
    let requiredChampion, requiredAlly: String
    let stats: [String: Int]
    let tags: [String]
    let maps: [String: Bool]?

    enum CodingKeys: String, CodingKey {
        case name, rune, gold, group
        case basicDescription = "description"
        case colloq, plaintext, consumed, stacks, depth, consumeOnFull, from, into, specialRecipe, inStore, hideFromAll, requiredChampion, requiredAlly, stats, tags, maps
    }
}

struct Gold: Codable {
    let base, total, sell: Int
    let purchasable: Bool
}


struct Rune: Codable {
    let isrune: Bool
    let tier: Int
    let type: String
}
