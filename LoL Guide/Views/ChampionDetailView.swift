//
//  ChampionDetailView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 6.06.2022.
//

import SwiftUI
import Kingfisher

struct ChampionDetailView: View {
    @State var champion: Datum?

   
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    
                    KFImage(URL(string: "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/\(champion?.id ?? "")_0.jpg"))
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)

                    Spacer()
                    Divider()
                    
                    VStack{
                        Text("SPELLS")
                            .font(.system(size: 23))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                        HStack{
                            KFImage(URL(string: "http://ddragon.leagueoflegends.com/cdn/12.10.1/img/passive/\(champion?.id ?? "")_Passive.png"))
                                .clipShape(Circle())
                            Text("\(champion?.passive.name ?? "")")
                            
                            Spacer()
                        }.padding()
                            
                        HStack{
                            KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/\(champion?.spells[0].id ?? "").png"))
                                .clipShape(Circle())
                            Text("\(champion?.spells[0].name ?? "")")
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("Cost of Spell")
                                Text("\(champion?.spells[0].effectBurn[1] ?? "")")
                            }
                        }.padding()
                        HStack{
                            KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/\(champion?.spells[1].id ?? "").png"))
                                .clipShape(Circle())
                            Text("\(champion?.spells[1].name ?? "")")
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("Cost of Spell")
                                Text("\(champion?.spells[0].effectBurn[2] ?? "")")
                            }
                        }.padding()
                          
                        HStack{
                            KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/\(champion?.spells[2].id ?? "").png"))
                                .clipShape(Circle())
                            Text("\(champion?.spells[2].name ?? "")")
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("Cost of Spell")
                                Text("\(champion?.spells[0].effectBurn[3] ?? "")")
                            }
                        }.padding()
                        HStack{
                            KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/\(champion?.spells[3].id ?? "").png"))
                                .clipShape(Circle())
                            Text("\(champion?.spells[3].name ?? "")")
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("Cost of Spell")
                                Text("\(champion?.spells[0].effectBurn[4] ?? "")")
                            }
                        }.padding()
                    }
                    
                    Spacer()
                    HStack{
                        VStack{
                            
                            Text("Ally Tips")
                                .bold()
                                .font(.system(size: 20))
                            ForEach(champion?.allytips ?? [""], id:\.self){ tips in
                                Text("\(tips)")
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 10 ).stroke(Color.green)
                                    )
                                    .offset(x: 5, y: 5)
                            }
                            
                            Divider()
                            Spacer()
                            Text("Enemy Tips")
                            
                                .bold()
                                .font(.system(size: 20))
                            ForEach(champion?.enemytips ?? [""], id:\.self){ tips in
                                Text("\(tips)")
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 10 ).stroke(.red))
                                    .offset(x: 5, y: 10)
                            }
                        }
                        
                        Spacer()
                    }
                    
                    
                }
                Divider()
                VStack{
                    Text("Lore")
                        .bold()
                        .font(.system(size: 25))
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.black)
                        
                            .opacity(0.4)
                        
                            .font(.headline)
                        
                        Text("\(champion?.lore ?? "" )").font(.headline).foregroundColor(Color.theme.textColor)
                            .lineLimit(nil)
                            .padding()
                    }
                }
            }
            .navigationBarTitle(Text(champion?.name ?? "")
                                , displayMode: .inline)
        }
    }
}

struct ChampionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionDetailView(champion:  Datum.init(id: "Aatrox", key: "59", name: "Aatrox", title: "The Darkin Blade", image: Images(full: "", sprite: Sprite.champion0PNG, group: TypeEnum.champion, x: 0, y: 0, w: 0, h: 0), skins: [Skin(id: "3", num: 1, name: "classic", chromas: false)], lore: "Lore Of Champion", blurb: "Blurb of Champion", allytips: ["AllyTip1","AllyTip2"], enemytips: ["EnemyTip1","EnemyTip2"], tags: [Tag.fighter,Tag.tank], partype: ResourceTypes.NoCost, info: Info(attack: 5, defense: 5, magic: 5, difficulty: 3), stats: ["hp":200], spells: [Spell(id: "3", name: "The Darkin Blade", spellDescription: "spellspell", tooltip: "ToolTip", leveltip: Leveltips(label: ["",""], effect: ["",""]), maxrank: 100, cooldown: [1.0,1.2], cooldownBurn: "", cost: [1,2,3], costBurn: "2,3,5", effect: [[2.0,2.3]], effectBurn: ["1","4"], costType: CostType.empty, maxammo: "2", range: [3,5,6], rangeBurn: "3,5,7", image: Images(full: "", sprite: Sprite.spell0PNG, group: TypeEnum.spell, x: 4, y: 4, w: 4, h: 4))], passive: Passive(name: "", passiveDescription: "PassiveDescription", image: Images(full: "Aatrox", sprite: Sprite.passive0PNG, group: TypeEnum.passive, x: 5, y: 6, w: 0, h: 0))))
        
    }
}
