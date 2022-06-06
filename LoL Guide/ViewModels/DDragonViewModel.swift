//
//  ChampionViewModel.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 13.05.2022.
//

import Foundation
import Combine
import SwiftUI

class DDragonViewModel : ObservableObject{
        
   
    @Published var champList : [String] = []
    @Published var champName = [Datum]()
    @Published var champions : Datum?
    @Published var searchResult : [Datum] = []
    @Published var items : ItemData?
    @Published var itemKey : Items?

    init(){
        fetchAllChampions()
       
    }

    func fetcItems(){
        DataDragonService().getItems { items in
            let itemss = Array(items!.data.keys)
            
            for i in itemss.indices{
                self.items = items!.data[itemss[i]].self
            }
            print("")
        }
    }
    
    func fetchAllChampions() {
        DataDragonService().getChampions { champions in
            
            self.champList = Array(champions!.data.keys)
           
//            self.champName.forEach { champion in
//                self.champions = champion.self
//            }
            
            for i in self.champList.indices{
                self.champions = champions!.data[self.champList[i]].self


            }
//            let x = champions?.data.keys
//            champList = Array(champions?.data.keys)
//            let firstchamp = champions?.data[index]
            print("")

    }

    }
    
    func fetchFreeChampions(){
        DataDragonService().getFreeRotation { champion in
            for i in champion!.freeChampionIDS{
                if i == Int(self.champions?.key ?? ""){
                    
                }
            }
        }
    }
   
  
}






