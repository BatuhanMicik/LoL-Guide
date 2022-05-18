//
//  ChampionStats.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 20.04.2022.
//

import Foundation

public struct ChampionStats : Codable{
    
         var health: Double
         var healthPerLevel: Double
         var healthRegen: Double
         var healthRegenPerLevel: Double
         var ressource: Double
         var ressourcePerLevel: Double
         var ressourceRegen: Double
         var ressourceRegenPerLevel: Double
         var attackDamage: Double
         var attackDamagePerLevel: Double
         var armor: Double
         var armorPerLevel: Double
         var magicResistance: Double
         var magicResistancePerLevel: Double
         var criticalChance: Double
         var criticalChancePerLevel: Double
         var attackSpeedOffset: Double?
         var attackSpeedPerLevel: Double
         var attackRange: Double
         var movementSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case health = "hp"
            case healthPerLevel = "hpperlevel"
            case healthRegen = "hpregen"
            case healthRegenPerLevel = "hpregenperlevel"
            case ressource = "mp"
            case ressourcePerLevel = "mpperlevel"
            case ressourceRegen = "mpregen"
            case ressourceRegenPerLevel = "mpregenperlevel"
            case attackDamage = "attackdamage"
            case attackDamagePerLevel = "attackdamageperlevel"
            case armor = "armor"
            case armorPerLevel = "armorperlevel"
            case magicResistance = "spellblock"
            case magicResistancePerLevel = "spellblockperlevel"
            case criticalChance = "crit"
            case criticalChancePerLevel = "critperlevel"
            case attackSpeedOffset = "attackspeedoffset"
            case attackSpeedPerLevel = "attackspeedperlevel"
            case attackRange = "attackrange"
            case movementSpeed = "movespeed"
        }
}
