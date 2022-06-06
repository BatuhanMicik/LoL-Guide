//
//  Items.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 11.05.2022.
//

import Foundation

struct Items: Codable {
//    let type: String
//    let version: String
    let basic: Basic
    let data: [String: ItemData]
    let groups: [Group]
    let tree: [Tree]
}

struct Group: Codable {
    let id, maxGroupOwnable: String

    enum CodingKeys: String, CodingKey {
        case id
        case maxGroupOwnable = "MaxGroupOwnable"
    }
}

struct Tree: Codable {
    let header: String
    let tags: [String]
}
