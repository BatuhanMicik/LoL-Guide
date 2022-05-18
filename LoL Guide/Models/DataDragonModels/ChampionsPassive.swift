//
//  ChampionsPassive.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.04.2022.
//

import Foundation

public struct ChampionPassive : Codable {
    
        let name, passiveDescription: String
        let image: ImageModel?
        
    enum CodingKeys: String, CodingKey {
           case name
           case passiveDescription = "description"
           case image
       }
    }

    
   

