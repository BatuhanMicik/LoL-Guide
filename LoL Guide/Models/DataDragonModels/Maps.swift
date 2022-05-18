//
//  Maps.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 11.05.2022.
//

import Foundation
struct Map: Codable {
    let mapID: Int
    let mapName, notes: String

    enum CodingKeys: String, CodingKey {
        case mapID = "mapId"
        case mapName, notes
    }
}

typealias Maps = [Map]
