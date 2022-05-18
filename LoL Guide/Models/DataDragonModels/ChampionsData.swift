//
//  SpesificChampionDetails.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 20.04.2022.
//

import Foundation
//import Alamofire

struct ChampionsData : Codable{
        let id, key, name, title: String 
        let image: ImageModel
        let skins: [ChampionSkins]?
        let lore, blurb: String?
        let allyTips, enemyTips: [String]?
        let tags: [ChampionRoles]
        let partype: ResourceTypes?
        let info: ChampionDifficulties
        let stats: ChampionStats
        let spells: [ChampionSpells]?
        let passive: ChampionPassive?
        let roles: [ChampionRoles]
        let difficulties: ChampionDifficulties?
        //let recommended: [Recommended]?
    
//    public init(id: String, name: String, title: String, skins: [ChampionSkins], spells: [ChampionSpells], passive: ChampionPassive, blurb: String, lore: String, roles: [ChampionRoles], partype: ResourceTypes, stats: ChampionStats, difficulties: ChampionDifficulties, allyTips: [String], enemyTips: [String]) {
//            self.id = id
//            self.name = name
//            self.title = title
//            self.skins = skins
//            self.spells = spells
//            self.passive = passive
//            self.blurb = blurb
//            self.lore = lore
//            self.roles = roles
//            self.partype = partype
//            self.stats = stats
//            self.difficulties = difficulties
//            self.allyTips = allyTips
//            self.enemyTips = enemyTips
//        }
}


