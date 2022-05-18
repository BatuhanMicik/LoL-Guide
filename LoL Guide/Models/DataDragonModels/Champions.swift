//
//  ChampionDetails.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.04.2022.
//



import Foundation
//import Alamofire


struct Champions: Codable {
    let version,type,format : String
    let keys: [Int: String]?
    let data: [String : ChampionsData]

    }




