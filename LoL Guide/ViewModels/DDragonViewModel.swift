//
//  ChampionViewModel.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 13.05.2022.
//

import Foundation
import Combine
import SwiftUI

typealias fetchChampionDataResponse = ([Datum],[String])


class DDragonViewModel : ObservableObject{
    
    //Champions
    @Published var champs : [String] = []
    @Published var champName = [Datum]()
    @Published var champions : Datum?
    
    func fetchAllChampions(completion: @escaping(fetchChampionDataResponse)->Void) {
        DataDragonService().getChampions { champions in
            
            self.champs = Array(champions!.data.keys)
            self.champName = Array(champions!.data.values).sorted(by: {$0.id < $1.id})
            
            self.champName.forEach { champion in
                self.champions = champion.self
            }
            
            if self.champs.count == self.champName.count, self.champName.first != nil {
                completion(fetchChampionDataResponse(self.champName, self.champs))
            }
        }
        
    }
 
}






