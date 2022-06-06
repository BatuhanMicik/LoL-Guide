// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let champions = try? newJSONDecoder().decode(Champions.self, from: jsonData)

//
// To read values from URLs:
//
//   let task = URLSession.shared.championsTask(with: url) { champions, response, error in
//     if let champions = champions {
//       ...
//     }
//   }
//case resource = "{{ cost }} {{ abilityresourcename }}"
//   task.resume()

import Foundation

struct Champion: Codable {
//    let type: TypeEnum
//    let format, version: String
    let data: [String: Datum]
//    let keys: [String: String]
}

// MARK: - Datum
struct Datum: Codable, Identifiable {
    let id, key, name, title: String
    let image: Images
    let skins: [Skin]
    let lore, blurb: String
    let allytips, enemytips: [String]
    let tags: [Tag]
    let partype: ResourceTypes
    let info: Info
    let stats: [String: Double]
    let spells: [Spell]
    let passive: Passive
    
    enum CodingKeys: String, CodingKey {
        case id, key, name, title, lore, blurb
        case image,skins,allytips,enemytips,tags,partype,info,stats,spells,passive
    }
   
    
   
}

// MARK: - Image
struct Images: Codable {
    let full: String
    let sprite: Sprite
    let group: TypeEnum
    let x, y, w, h: Int
}

enum TypeEnum: String, Codable {
    case champion = "champion"
    case passive = "passive"
    case spell = "spell"
}

enum Sprite: String, Codable {
    case champion0PNG = "champion0.png"
    case champion1PNG = "champion1.png"
    case champion2PNG = "champion2.png"
    case champion3PNG = "champion3.png"
    case champion4PNG = "champion4.png"
    case champion5PNG = "champion5.png"
    case passive0PNG = "passive0.png"
    case passive1PNG = "passive1.png"
    case passive2PNG = "passive2.png"
    case passive3PNG = "passive3.png"
    case passive4PNG = "passive4.png"
    case passive5PNG = "passive5.png"
    case spell0PNG = "spell0.png"
    case spell10PNG = "spell10.png"
    case spell11PNG = "spell11.png"
    case spell12PNG = "spell12.png"
    case spell13PNG = "spell13.png"
    case spell14PNG = "spell14.png"
    case spell15PNG = "spell15.png"
    case spell16PNG = "spell16.png"
    case spell1PNG = "spell1.png"
    case spell2PNG = "spell2.png"
    case spell3PNG = "spell3.png"
    case spell4PNG = "spell4.png"
    case spell5PNG = "spell5.png"
    case spell6PNG = "spell6.png"
    case spell7PNG = "spell7.png"
    case spell8PNG = "spell8.png"
    case spell9PNG = "spell9.png"
}

// MARK: - Info
struct Info: Codable {
    let attack, defense, magic, difficulty: Int
}

// MARK: - Passive
struct Passive: Codable {
    let name, passiveDescription: String
    let image: Images

    enum CodingKeys: String, CodingKey {
        case name
        case passiveDescription = "description"
        case image
    }
}

// MARK: - Skin
struct Skin: Codable {
    let id: String
    let num: Int
    let name: String
    let chromas: Bool
}

// MARK: - Spell
struct Spell: Codable {
    let id, name, spellDescription, tooltip: String
    let leveltip: Leveltips?
    let maxrank: Int
    let cooldown: [Double]
    let cooldownBurn: String
    let cost: [Int]
    let costBurn: String
//    let datavalues: Datavaluess
    let effect: [[Double]?]
    let effectBurn: [String?]
//    let vars: [JSONAny]
    let costType: CostType
    let maxammo: String
    let range: [Int]
    let rangeBurn: String
    let image: Images

    
    

    enum CodingKeys: String, CodingKey {
        case id, name
        case spellDescription = "description"
        case tooltip, leveltip, maxrank, cooldown, cooldownBurn, cost, costBurn, effect, effectBurn,  costType, maxammo, range, rangeBurn, image

    }
}

enum CostType: String, Codable {
    case abilityresourcename = " {{ abilityresourcename }}"
    case abilityresourcenamePerSecond = " {{ abilityresourcename }} per Second"
    case costTypeHealth = "Health"
    case currentHealth = "% Current Health"
    case empty = ""
    case energy = " Energy"
    case furyASecond = " Fury a Second"
    case generates1Ferocity = "Generates 1 Ferocity"
    case health = " Health"
    case heat = " Heat"
    case mana = " Mana"
    case manaAllCharges = " Mana, all Charges"
    case manaPerRocket = " Mana Per Rocket"
    case manaPerSecond = " Mana per Second"
    case manaPercentmanacost100MaxMana = " Mana + {{ percentmanacost*100 }}% Max Mana"
    case manacostpersecondManaPerSecond = " + {{ manacostpersecond }} Mana per second"
    case maxHealthCostMana = "% Max Health, {{ cost }} Mana"
    case noCost = "No Cost"
    case ofCurrentHealth = "% of current Health"
    case ofCurrentHealthHealthcosttooltip = "% of current Health ({{ healthcosttooltip }})"
    case ofCurrentHealthTooltiphealthcost = "% of current Health ({{ tooltiphealthcost }})"
    case ofMaxHealth = "% of max Health"
    case passive = "Passive"
    case the1Seed = "1 Seed"
    case turretKitCostMana = " Turret Kit & {{ cost }} Mana"
    case resource = "{{ cost }} {{ abilityresourcename }}"
    
   
}

// MARK: - Datavalues


// MARK: - Leveltip
struct Leveltips: Codable {
    let label, effect: [String]
}

enum Tag: String, Codable {
    case assassin = "Assassin"
    case fighter = "Fighter"
    case mage = "Mage"
    case marksman = "Marksman"
    case support = "Support"
    case tank = "Tank"
}

let mockChampion: Datum = .init(id: "Aatrox", key: "59", name: "Aatrox", title: "The Darkin Blade", image: Images(full: "", sprite: Sprite.champion0PNG, group: TypeEnum.champion, x: 0, y: 0, w: 0, h: 0), skins: [Skin(id: "3", num: 1, name: "classic", chromas: false)], lore: "Lore Of Champion", blurb: "Blurb of Champion", allytips: ["AllyTip1","AllyTip2"], enemytips: ["EnemyTip1","EnemyTip2"], tags: [Tag.fighter,Tag.tank], partype: ResourceTypes.NoCost, info: Info(attack: 5, defense: 5, magic: 5, difficulty: 3), stats: ["hp":200], spells: [Spell(id: "3", name: "The Darkin Blade", spellDescription: "spellspell", tooltip: "ToolTip", leveltip: Leveltips(label: ["",""], effect: ["",""]), maxrank: 100, cooldown: [1.0,1.2], cooldownBurn: "", cost: [1,2,3], costBurn: "2,3,5", effect: [[2.0,2.3]], effectBurn: ["1","4"], costType: CostType.empty, maxammo: "2", range: [3,5,6], rangeBurn: "3,5,7", image: Images(full: "", sprite: Sprite.spell0PNG, group: TypeEnum.spell, x: 4, y: 4, w: 4, h: 4))], passive: Passive(name: "", passiveDescription: "PassiveDescription", image: Images(full: "Aatrox", sprite: Sprite.passive0PNG, group: TypeEnum.passive, x: 5, y: 6, w: 0, h: 0)))





