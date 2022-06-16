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
    
    
     var matchesPreview = [Match]()
    @Published var matchInfos = [MatchInfo]()
    
    
    
    func getSummonerInfo(name : String, completion : @escaping(SummonerInfo?) -> ()){
        ProfileService().getSummonerInfo(name: name) { summoner in
            if summoner?.puuid != nil{
                completion(summoner)
            }
            
        }
    }
    
    func getMatchDetails(puuid : String, completion : @escaping([MatchInfo]) -> Void){
        self.matchInfos.removeAll()
        ProfileService().getMatchIDs(puuid: puuid) { matches in
            if let validArray = matches, validArray.count > 0 {
                validArray.forEach { matchId in
                    ProfileService().getMatches(matchID: matchId) { matchInfo in
                        if let matchValue = matchInfo {
                            self.matchInfos.append(matchValue.info)
                           
                            
                           
                        }
                    }
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                
                completion(self.matchInfos)
                
            }
        }
        
    }
    
   
}

