//
//  ProfileView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 16.05.2022.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    @State var summonerInfo: SummonerInfo?
    @State private var games : [MatchInfo]?
    @State private var champs : Datum?
//    @State private var gameID : [MatchInfo]?
    @ObservedObject var vm = RiotViewModel()
    var body: some View {
        
        VStack(alignment: .center){
            ScrollView{
            profileStart
          
                .onAppear(){
                    vm.getMatchDetails(puuid: summonerInfo?.puuid ?? "") { data in
                        games = data
                    }
                  

                }
            
                LazyVStack{
                    if let matchList = self.games {
                        ForEach(matchList) { game in
                            ForEach(game.participants, id:\.puuid){ participant in
                                    if participant.puuid == summonerInfo?.puuid{
                                        GameHistoryView(gameModel: participant)
                                    }
                                }
                                
                    }
                    
                    }
                }
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(summonerInfo: SummonerInfo(id: "1", accountID: "asdsad", puuid: "asdasdasd", name: "batu", profileIconID: 12, summonerLevel: 55))
    }
   
}
extension ProfileView{
    var profileStart : some View{
       
            ZStack(alignment : .bottomLeading){
                KFImage(URL(string: "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/\(champs?.id ?? "Aatrox")_0.jpg"))
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.8)
                    .frame(width: 250, height: 250)
                    
                VStack {
     
                    HStack {
                        ZStack {
                            KFImage(URL(string: "http://ddragon.leagueoflegends.com/cdn/12.10.1/img/profileicon/\(summonerInfo?.profileIconID ?? 1).png"))
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                
                                .frame(width: 100, height: 100)
                            
                            
                            Text("\(summonerInfo?.summonerLevel ?? 1)")
                                
                                .bold()
                                .foregroundColor(Color.theme.textColor)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.theme.background).shadow(radius: 3))
                                .offset(x: 0, y: 50)
                            
                        }
                        .offset(x: -20, y: 8)
                        
                        Text("\(summonerInfo?.name ?? "")")
                            .foregroundColor(Color.white)
                            .bold()
                            .font(.system(size: 25))
                            .offset(x: -10, y: 0)
                        
                    }
                }
            }
            
            
            
            
            
            
        }
    
}
