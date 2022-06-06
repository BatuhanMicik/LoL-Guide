//
//  ItemData.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 11.05.2022.
//

import Foundation

struct ItemData : Codable{
    let name, dataDescription, colloq, plaintext: String
    let into: [String]?
    let image: Images
    let gold: Gold
    let tags: [String]
    let maps: [String: Bool]
    let stats: [String: Double]
    let inStore: Bool?
    let from: [String]?
    let depth, stacks: Int?
    let consumed, hideFromAll, consumeOnFull: Bool?
    let requiredChampion: String?
    let requiredAlly: String?
    let specialRecipe: Int?

    enum CodingKeys: String, CodingKey {
        case name
        case dataDescription = "description"
        case colloq, plaintext, into, image, gold, tags, maps, stats, inStore, from, depth, stacks, consumed, hideFromAll, consumeOnFull, requiredChampion, specialRecipe, requiredAlly
    }
}


