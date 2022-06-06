//
//  PreviewProvider.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.05.2022.
//

import Foundation
import SwiftUI


extension PreviewProvider{
    static var dev: DeveloperPreview{
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init(){}
    
    
   
    
    let champion = Datum(id: "Aatrox", key: "59", name: "Aatrox", title: "The Darkin Blade", image: Images(full: "", sprite: Sprite.champion0PNG, group: TypeEnum.champion, x: 0, y: 0, w: 0, h: 0), skins: [Skin(id: "", num: 1, name: "", chromas: false)], lore: "", blurb: "", allytips: ["Tip1","Tip2"], enemytips: ["Tip1","Tip2"], tags: [Tag.fighter,Tag.tank], partype: ResourceTypes.NoCost, info: Info(attack: 5, defense: 5, magic: 5, difficulty: 3), stats: ["hp":200], spells: [Spell(id: "", name: "", spellDescription: "", tooltip: "ToolTip", leveltip: Leveltips(label: ["",""], effect: ["",""]), maxrank: 100, cooldown: [1.0,1.2], cooldownBurn: "", cost: [1,2,3], costBurn: "2,3,5", effect: [[2.0,2.3]], effectBurn: ["1","4"], costType: CostType.empty, maxammo: "2", range: [3,5,6], rangeBurn: "3,5,7", image: Images(full: "", sprite: Sprite.spell0PNG, group: TypeEnum.spell, x: 4, y: 4, w: 4, h: 4))], passive: Passive(name: "", passiveDescription: "PassiveDescription", image: Images(full: "Aatrox", sprite: Sprite.passive0PNG, group: TypeEnum.passive, x: 5, y: 6, w: 0, h: 0)))
  
   
}


