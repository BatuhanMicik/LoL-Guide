//
//  DataDragonServices.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 25.04.2022.
//

import Foundation
import Combine




class DataDragonService{

    init(){
       
    }

    func getChampions(completion: @escaping(Champion?) -> ()) {
            guard let url = URL(string: "http://ddragon.leagueoflegends.com/cdn/12.9.1/data/en_US/championFull.json") else {
                completion(nil)
                return
            }
            
            var request = URLRequest(url: url)
            
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("application/json", forHTTPHeaderField: "Accept")
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                    return
                }
                
                do {
                    let champion = try JSONDecoder().decode(Champion.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(champion)
                    }
                } catch {
                    print("ERROR: ", error)
                }
            }.resume()
}
    

    
    func getItems(completion: @escaping(Items?) -> ()) {
            guard let url = URL(string: "http://ddragon.leagueoflegends.com/cdn/12.9.1/data/en_US/item.json") else {
                completion(nil)
                return
            }
            
            var request = URLRequest(url: url)
            
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("application/json", forHTTPHeaderField: "Accept")
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                    return
                }
                
                do {
                    let item = try JSONDecoder().decode(Items.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(item)
                    }
                } catch {
                    print("ERROR: ", error)
                }
            }.resume()
}
    func getRunes(completion: @escaping([Runee]?) -> ()) {
            guard let url = URL(string: "http://ddragon.leagueoflegends.com/cdn/12.9.1/data/en_US/runesReforged.json") else {
                completion(nil)
                return
            }
            
            var request = URLRequest(url: url)
            
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("application/json", forHTTPHeaderField: "Accept")
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                    return
                }
                
                do {
                    let runes = try JSONDecoder().decode([Runee].self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(runes)
                    }
                } catch {
                    print("ERROR: ", error)
                }
            }.resume()
}
    
    
    
    func getSumSpells(completion: @escaping(SumSpells?) -> ()) {
            guard let url = URL(string: "http://ddragon.leagueoflegends.com/cdn/12.9.1/data/en_US/profileicon.json") else {
                completion(nil)
                return
            }
            
            var request = URLRequest(url: url)
            
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("application/json", forHTTPHeaderField: "Accept")
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                    return
                }
                
                do {
                    let summonerSpells = try JSONDecoder().decode(SumSpells.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(summonerSpells)
                    }
                } catch {
                    print("ERROR: ", error)
                }
            }.resume()
}
    func getFreeRotation(completion: @escaping(FreeChampions?) -> ()) {
            guard let url = URL(string: "https://tr1.api.riotgames.com/lol/platform/v3/champion-rotations?api_key=\(Riotkey)") else {
                completion(nil)
                return
            }
            
            var request = URLRequest(url: url)
            
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("application/json", forHTTPHeaderField: "Accept")
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                    return
                }
                
                do {
                    let freeChampions = try JSONDecoder().decode(FreeChampions.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(freeChampions)
                    }
                } catch {
                    print("ERROR: ", error)
                }
            }.resume()
}
    
        
}




