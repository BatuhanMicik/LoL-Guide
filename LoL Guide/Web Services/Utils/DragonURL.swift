//
//  DragonURL.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 9.05.2022.
//

import Foundation

struct DDragonURLs{

    public let DDragonURL = "https://ddragon.leagueoflegends.com/cdn/"

}

extension DDragonURLs{
    
    func getChampions() -> String {
        return "\(DDragonURL)/12.9.1/data/en_US/champion.json"
    }
}
