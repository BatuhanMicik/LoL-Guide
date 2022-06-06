//
//  ProfileServices.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 30.05.2022.
//

import Foundation

enum NetworkError: Error{
    case badURL
    case badID
}

class ProfileService{
         
    
    func getSummonerInfo(name : String ,completion: @escaping(SummonerInfo?) -> ()) {
            guard let url = URL(string: "https://tr1.api.riotgames.com/lol/summoner/v4/summoners/by-name/Khonshû?api_key=\(Riotkey)") else {
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
                    let info = try JSONDecoder().decode(SummonerInfo.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(info)
                    }
                } catch {
                    print("ERROR: ", error)
                }
            }.resume()
    }
    
    func getMatchIDs(puuid : String, completion: @escaping(MatchIDs?) -> ()) {
        guard let url = URL(string: "https://europe.api.riotgames.com/lol/match/v5/matches/by-puuid/\(puuid)/ids?start=0&count=20&api_key=\(Riotkey)") else {
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
                let IDs = try JSONDecoder().decode(MatchIDs.self, from: data)
                
                DispatchQueue.main.async {
                    completion(IDs)
                }
            } catch {
                print("ERROR: ", error)
            }
        }.resume()
        

    }

    func getMatches(matchID: String, completion: @escaping(Match?) -> ()){
        guard let url = URL(string: "https://europe.api.riotgames.com/lol/match/v5/matches/TR1_1291968656?api_key=\(Riotkey)") else {
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
                let matches = try JSONDecoder().decode(Match.self, from: data)
                
                DispatchQueue.main.async {
                    completion(matches)
                }
            } catch {
                print("ERROR: ", error)
            }
        }.resume()
    }
}


