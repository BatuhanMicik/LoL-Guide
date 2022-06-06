//
//  FreeChampionModel.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 4.06.2022.
//

import Foundation

struct FreeChampions: Codable {
    let freeChampionIDS, freeChampionIDSForNewPlayers: [Int]
    let maxNewPlayerLevel: Int

    enum CodingKeys: String, CodingKey {
        case freeChampionIDS = "freeChampionIds"
        case freeChampionIDSForNewPlayers = "freeChampionIdsForNewPlayers"
        case maxNewPlayerLevel
    }
}
