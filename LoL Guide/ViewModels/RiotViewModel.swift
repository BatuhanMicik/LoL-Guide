//
//  RiotViewModel.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 23.05.2022.
//

import Foundation
import SwiftUI
import Combine

class RiotViewModel: ObservableObject{
    @Published var searchName : String = ""
     var matchesArray = [String]()
    @Published var matchesPreview = [MatchInfo]()
    @Published var summonerInfos : SummonerInfo?
    
    init(){
        getSummonerInfo()
    }
    

    func getSummonerInfo(){
        ProfileService().getSummonerInfo(name: searchName) { summoner in
            self.summonerInfos = summoner.self
            
        }
    }
    
    func getMatchDetails(){
        ProfileService().getSummonerInfo(name: searchName) { response in
            let profile = response
            if let puiid = profile?.puuid{
                ProfileService().getMatchIDs(puuid: puiid) { matches in
                    if let validArray = matches, validArray.count > 0 {
                        self.matchesArray = validArray
//                            print(matchesArray.count)
                        self.matchesArray.forEach { matchId in
//                            ProfileService().getMatches(matchID: self.matchesArray) { matchInfo in
//                                self.matchesPreview.append(matchInfo ?? MatchInfo)
//                            }
                            
                }
        }
        
    }
                
                

    
    
}


        }
    }
//    func matchDetailForPlayer(){
//        self.matchesPreview.forEach { participant in
//            if
//        }
//    }
    
    
}
