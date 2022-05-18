//
//  ImageModel.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 7.05.2022.
//

import Foundation

 struct ImageModel: Codable {
    let full: String
     let sprite: String
     let group: String
     let x, y, w, h: Double
}
