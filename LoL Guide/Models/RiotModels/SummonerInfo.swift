//
//  SummonerInfo.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 22.05.2022.
//

import Foundation

struct SummonerInfo: Codable {
    let id, accountID, puuid, name: String
    let profileIconID, summonerLevel: Int

    enum CodingKeys: String, CodingKey {
        case id
        case accountID = "accountId"
        case puuid, name
        case profileIconID = "profileIconId"
        case summonerLevel
    }
}
