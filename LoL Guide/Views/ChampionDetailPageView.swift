//
//  ChampionDetailPageView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 16.05.2022.
//

import SwiftUI
import Kingfisher

struct ChampionDetailPageView: View {
    
    init() {
      

           UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 40)!]
    }
   @ObservedObject var vm = DDragonViewModel()
    var body: some View {
        NavigationView{
        ScrollView{
        VStack{
            KFImage(URL(string: "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/\(vm.champions?.name ?? "")_0.jpg"))
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
                KFImage(URL(string: "http://ddragon.leagueoflegends.com/cdn/12.10.1/img/passive/\(vm.champions?.name ?? "")_Passive.png"))
                    .clipShape(Circle())
                Text("\(vm.champions?.passive.name ?? "")")
                   
                Spacer()
            }.padding()
                HStack{
                    KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/\(vm.champions?.spells[0].id ?? "").png"))
                            .clipShape(Circle())
                    Text("\(vm.champions?.spells[0].name ?? "")")
                        Spacer()
                    VStack(alignment: .trailing){
                        Text("Cost of Spell")
                    Text("\(vm.champions?.spells[0].effectBurn[1] ?? "")")
                    }
                }.padding()
                HStack{
                    KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/\(vm.champions?.spells[1].id ?? "").png"))
                            .clipShape(Circle())
                        Text("\(vm.champions?.spells[1].name ?? "")")
                        Spacer()
                    VStack(alignment: .trailing){
                    Text("Cost of Spell")
                    Text("\(vm.champions?.spells[0].effectBurn[2] ?? "")")
                    }
                }.padding()
                HStack{
                    KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/\(vm.champions?.spells[2].id ?? "").png"))
                            .clipShape(Circle())
                        Text("\(vm.champions?.spells[2].name ?? "")")
                        Spacer()
                    VStack(alignment: .trailing){
                    Text("Cost of Spell")
                    Text("\(vm.champions?.spells[0].effectBurn[3] ?? "")")
                    }
                }.padding()
                HStack{
                    KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/\(vm.champions?.spells[3].id ?? "").png"))
                            .clipShape(Circle())
                        Text("\(vm.champions?.spells[3].name ?? "")")
                        Spacer()
                    VStack(alignment: .trailing){
                    Text("Cost of Spell")
                    Text("\(vm.champions?.spells[0].effectBurn[4] ?? "")")
                    }
                }.padding()
            }
           
            Spacer()
            HStack{
            VStack{
                
                Text("Ally Tips")
                    .bold()
                    .font(.system(size: 20))
                ForEach(vm.champions?.allytips ?? [""], id:\.self){ tips in
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
                ForEach(vm.champions?.enemytips ?? [""], id:\.self){ tips in
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
                
                Text("\(vm.champions?.lore ?? "" )").font(.headline).foregroundColor(Color.theme.textColor)
                    .lineLimit(nil)
                    .padding()
                }
               }
        }
        .navigationBarTitle(Text(vm.champions?.name ?? "")
                            , displayMode: .inline)
        }
    }
}

struct ChampionDetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionDetailPageView()
    
    }
}
