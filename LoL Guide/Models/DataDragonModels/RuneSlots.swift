//
//  RuneSlots.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.05.2022.
//

import Foundation

struct Slot: Codable{
    let runes: [RunePath]
}

struct RunePath: Codable{
    let id : Int
    let key,icon,name,shortDesct,longDesc : String
}
