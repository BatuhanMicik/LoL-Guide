//
//  Queues.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 11.05.2022.
//

import Foundation

struct Queue: Codable {
    let queueID: Int
    let map: String
    let queueDescription, notes: String?

    enum CodingKeys: String, CodingKey {
        case queueID = "queueId"
        case map
        case queueDescription = "description"
        case notes
    }
}

typealias Queues = [Queue]
