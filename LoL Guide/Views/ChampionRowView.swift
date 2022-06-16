//
//  ChampionRowView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.05.2022.
//

import SwiftUI
import Kingfisher

struct ChampionRowView: View {
    
    var championModel: Datum
    @ObservedObject var vm = DDragonViewModel()
    
    var body: some View {
        Column
    }
}

struct ChampionRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionRowView(championModel: Datum.init(id: "Aatrox", key: "59", name: "Aatrox", title: "The Darkin Blade", image: Images(full: "", sprite: Sprite.champion0PNG, group: TypeEnum.champion, x: 0, y: 0, w: 0, h: 0), skins: [Skin(id: "3", num: 1, name: "classic", chromas: false)], lore: "Lore Of Champion", blurb: "Blurb of Champion", allytips: ["AllyTip1","AllyTip2"], enemytips: ["EnemyTip1","EnemyTip2"], tags: [Tag.fighter,Tag.tank], partype: ResourceTypes.NoCost, info: Info(attack: 5, defense: 5, magic: 5, difficulty: 3), stats: ["hp":200], spells: [Spell(id: "3", name: "The Darkin Blade", spellDescription: "spellspell", tooltip: "ToolTip", leveltip: Leveltips(label: ["",""], effect: ["",""]), maxrank: 100, cooldown: [1.0,1.2], cooldownBurn: "", cost: [1,2,3], costBurn: "2,3,5", effect: [[2.0,2.3]], effectBurn: ["1","4"], costType: CostType.empty, maxammo: "2", range: [3,5,6], rangeBurn: "3,5,7", image: Images(full: "", sprite: Sprite.spell0PNG, group: TypeEnum.spell, x: 4, y: 4, w: 4, h: 4))], passive: Passive(name: "", passiveDescription: "PassiveDescription", image: Images(full: "Aatrox", sprite: Sprite.passive0PNG, group: TypeEnum.passive, x: 5, y: 6, w: 0, h: 0))))
            .previewLayout(.sizeThatFits)
   
            .previewLayout(.sizeThatFits)
    }
    
}
extension ChampionRowView{
    private var Column: some View{
        HStack(spacing: 0){
            KFImage(URL(string: "https://ddragon.leagueoflegends.com/cdn/12.10.1/img/champion/\(championModel.id).png"))
                .clipShape(Circle().size(width: 123, height: 120))
                .frame(width: 100, height: 150)
                .frame(minWidth: 130)
        VStack(spacing: 0){
            
            
            Text("\(championModel.name)")
                .font(.system(size: 30))
                .bold()
                .padding(.leading, 0)
                .foregroundColor(Color.theme.textColor)
                
            
            Text("\(championModel.title)")
                    .font(.system(size: 15))
                    .italic() 
        }
           Spacer()
   
    }
        .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(Color.gray.opacity(0.25), lineWidth: 5))
    }
}
