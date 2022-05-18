//
//  ChampionSpells.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.04.2022.
//

import Foundation

    struct ChampionSpells : Codable{

        let id, name, spellDescription, tooltip: String
        let leveltip: Leveltip
        let maxrank: Int
        let cooldown: [Double]
        let cooldownBurn: String
        let cost: [Double]
        let costBurn: String
        let datavalues: Datavalues
        let effect: [[Double]?]
        let effectBurn: [String?]
        let vars: [VarData?]
        let costType, maxammo: String
        let range: [Double]
        let rangeBurn: String
        let image: ImageModel
        let resource: String


        enum CodingKeys: String, CodingKey {
               case id, name
               case spellDescription = "description"
               case tooltip, leveltip, maxrank, cooldown, cooldownBurn, cost, costBurn, datavalues, effect, effectBurn, vars, costType, maxammo, range, rangeBurn, image, resource
           }
}


struct Datavalues : Codable{
}


struct Leveltip : Codable{
    let label, effect: [String]
}
 struct VarData: Codable {
     let link: String?
     let key: String
     let coeff: Double
}
