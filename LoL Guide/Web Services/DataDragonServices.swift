//
//  DataDragonServices.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 25.04.2022.
//

import Foundation
import Combine
//import Alamofire



class DataDragonService{
    
    @Published var Aatrox = [ChampionsData]()
    func getChampions(){
    let url = URL(string: "http://ddragon.leagueoflegends.com/cdn/12.9.1/data/en_US/champion/Aatrox.json")!
          URLSession.shared.dataTask(with: url) {(data, response, error) in
              do {
                  if let champData = data {
                      let decodedData = try JSONDecoder().decode([ChampionsData].self, from: champData)
                      DispatchQueue.main.async {
                          self.Aatrox = decodedData
                      }
                  } else {
                      print("no data found")
                  }
              } catch {
                  print("an error occurred")
              }
          }.resume()
      }
   
}
    
    
   
    
   
        
    



