//
//  Seasons.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 11.05.2022.
//

import Foundation
//import Alamofire

struct Seasons: Codable, Identifiable {
    let id: Int
    let season: String
}

typealias Season = [Seasons]
