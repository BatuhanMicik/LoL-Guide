//
//  GameHistoryView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 16.05.2022.
//

import SwiftUI
import Kingfisher

struct GameHistoryView: View {
    
    var gameModel: Participant
    @ObservedObject var vm = RiotViewModel()
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 600, height: 300, alignment: .leading)
                .foregroundColor(Color.gray)
                .opacity(0.6)
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0)
        HStack{
            ZStack{
                if gameModel.win == true{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 80, height: 280, alignment: .leading)
                    .foregroundColor(Color.green)
                Text("VICTORY")
                    .font(.headline)
                    .fixedSize(horizontal: true, vertical: true)
                    .lineLimit(1)
                    .rotationEffect(.degrees(-90))
                }else{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 80, height: 280, alignment: .leading)
                        .foregroundColor(Color.red)
                    Text("DEFEAT")
                        .font(.headline)
                        .fixedSize(horizontal: true, vertical: true)
                        .lineLimit(1)
                        .rotationEffect(.degrees(-90))
                }
            }
            .padding()
            VStack(alignment: .leading){
                HStack{
            KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/champion/\(gameModel.championName).png")).clipShape(Circle())
                    VStack{
                        if gameModel.summoner1ID == 4{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerFlash.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 11{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerSmite.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 3{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerExhaust.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 21{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerBarrier.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 14{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerDot.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 7{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerHeal.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 12{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerTeleport.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 6{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerGhost.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 32{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerSnowball.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 13{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerMana.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner1ID == 1{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerBoost.png"))
                                         .clipShape(Circle())
                                 }else{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerFlash.png"))
                                         .clipShape(Circle())
                                 }
                     
                                 if gameModel.summoner2ID == 4{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerFlash.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 11{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerSmite.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 3{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerExhaust.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 21{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerBarrier.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 14{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerDot.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 7{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerHeal.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 12{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerTeleport.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 6{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerGhost.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 32{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerSnowball.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 13{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerMana.png"))
                                         .clipShape(Circle())
                                 }else if gameModel.summoner2ID == 1{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerBoost.png"))
                                         .clipShape(Circle())
                                 }else{
                                     KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.10.1/img/spell/SummonerDot.png"))
                                         .clipShape(Circle())
                                 }
                    }
                    .scaleEffect(0.8)
                    Text("\(gameModel.kills)/ \(gameModel.deaths)/ \(gameModel.assists)")
                        .font(.system(size: 22))
                        .bold()
                        
                    Spacer()
                    VStack{
                        Text("Total CS: \(gameModel.totalMinionsKilled)")
                            .font(.system(size: 18))
                            .bold()
                            .padding()
                        Text("Vision Score: \(gameModel.visionScore)")
                            .font(.system(size: 18))
                            .bold()
                    }
                    .padding()
                }
                
                HStack{
                    if gameModel.item0 == 0{
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 64, height: 64)
                    }else{
                        KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/\(gameModel.item0).png"))
                    }
            
                    if gameModel.item1 == 0{
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 64, height: 64)
                    }else{
                        KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/\(gameModel.item1).png"))
                    }
                        if gameModel.item2 == 0{
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 64, height: 64)
                        }else{
                            KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/\(gameModel.item2).png"))
                        }
                            if gameModel.item3 == 0{
                                Rectangle()
                                    .fill(Color.black)
                                    .frame(width: 64, height: 64)
                            }else{
                                KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/\(gameModel.item3).png"))
                            }
                    if gameModel.item4 == 0{
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 64, height: 64)
                    }else{
                        KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/\(gameModel.item4).png"))
                    }
                    if gameModel.item5 == 0{
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 64, height: 64)
                    }else{
                        KFImage(URL(string:"http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/\(gameModel.item5).png"))
                    }
                }
                
                .padding()
                
                
            }
            Spacer()
           
        }
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(.black, lineWidth: 7))
        
        }
        .scaleEffect(0.78)
        
    }
    
    
}

struct GameHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        GameHistoryView(gameModel: Participant(assists: 1, baronKills: 1, bountyLevel: 0, champExperience: 0, champLevel: 1, championID: 1, championName: "Aatrox", championTransform: 0, consumablesPurchased: 0, damageDealtToBuildings: 0, damageDealtToObjectives: 0, damageDealtToTurrets: 0, damageSelfMitigated: 0, deaths: 0, detectorWardsPlaced: 0, doubleKills: 0, dragonKills: 0, eligibleForProgression: false, firstBloodAssist: true, firstBloodKill: true, firstTowerAssist: false, firstTowerKill: true, gameEndedInEarlySurrender: true, gameEndedInSurrender: false, goldEarned: 9, goldSpent: 9, individualPosition: "Support", inhibitorKills: 1, inhibitorTakedowns: 0, inhibitorsLost: 0, item0: 1, item1: 0, item2: 2, item3: 3, item4: 4, item5: 5, item6: 6, itemsPurchased: 6, killingSprees: 2, kills: 3, lane: "Top", largestCriticalStrike: 1, largestKillingSpree: 1, largestMultiKill: 1, longestTimeSpentLiving: 1, magicDamageDealt: 1, magicDamageDealtToChampions: 1, magicDamageTaken: 1, neutralMinionsKilled: 1, nexusKills: 1, nexusLost: 1, nexusTakedowns: 1, objectivesStolen: 1, objectivesStolenAssists: 1, participantID: 1, pentaKills: 1, perks: Perks(statPerks: StatPerks(defense: 1, flex: 1, offense: 1), styles: [Style(styleDescription: Description.primaryStyle, selections: [Selection(perk: 1, var1: 1, var2: 1, var3: 1)], style: 1)]), physicalDamageDealt: 1, physicalDamageDealtToChampions: 1, physicalDamageTaken: 1, profileIcon: 1, puuid: "1011", quadraKills: 1, riotIDName: "1011", riotIDTagline: "1011", role: "Support", sightWardsBoughtInGame: 1, spell1Casts: 1, spell2Casts: 1, spell3Casts: 1, spell4Casts: 1, summoner1Casts: 1, summoner1ID: 1, summoner2Casts: 1, summoner2ID: 1, summonerID: "1011", summonerLevel: 5, summonerName: "1011", teamEarlySurrendered: false, teamID: 1, teamPosition: "teamPos", timeCCingOthers: 1, timePlayed: 1, totalDamageDealt: 1, totalDamageDealtToChampions: 1, totalDamageShieldedOnTeammates: 1, totalDamageTaken: 1, totalHeal: 1, totalHealsOnTeammates: 1, totalMinionsKilled: 1, totalTimeCCDealt: 1, totalTimeSpentDead: 1, totalUnitsHealed: 1, tripleKills: 1, trueDamageDealt: 1, trueDamageDealtToChampions: 1, trueDamageTaken: 1, turretKills: 1, turretTakedowns: 1, turretsLost: 1, unrealKills: 1, visionScore: 1, visionWardsBoughtInGame: 1, wardsKilled: 1, wardsPlaced: 1, win: true))
            .previewLayout(.sizeThatFits)
        
            
    }
    
}
