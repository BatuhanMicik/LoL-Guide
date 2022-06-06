//
//  Runes.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.05.2022.
//

import Foundation

struct Runee: Codable {
    let id: Int
    let key, icon, name: String
    let slots: [Slots]
}

// MARK: - Slot
struct Slots: Codable {
    let runes: [RuneElement]
}

// MARK: - RuneElement
struct RuneElement: Codable {
    let id: Int
    let key, icon, name, shortDesc: String
    let longDesc: String
}

typealias Runes = [Rune]
