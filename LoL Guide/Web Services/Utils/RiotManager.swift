////
////  RiotManager.swift
////  LoL Guide
////
////  Created by Batuhan Mıcık on 23.05.2022.
////
//
//import Foundation
//// https://tr1.api.riotgames.com/lol/summoner/v4/summoners/by-name/RiftNemesis?api_key={{api-key}}
//class RiotManager{
//
//    private var dataTask: URLSessionDataTask?
//
//    func loadSummoners(byName: String, completion:@escaping((SummonerInfo?)) -> (Void)){
//        dataTask?.cancel()
//        guard let url = buildurl(forTerm: byName) else {
//            completion(nil)
//            return
//        }
//        var request = URLRequest(url: url)
//
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.setValue("application/json", forHTTPHeaderField: "Accept")
//        request.httpMethod = "GET"
//
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data, error == nil else {
//                DispatchQueue.main.async {
//                    completion(nil)
//                }
//                return
//            }
//
//            do {
//                let summoners = try JSONDecoder().decode(SummonerInfo.self, from: data)
//
//                DispatchQueue.main.async {
//                    completion(summoners)
//                }
//            } catch {
//                print("ERROR: ", error.localizedDescription)
//            }
//        }.resume()
//    }
//
//
//    private func buildurl(forTerm byName: String) -> URL? {
//        guard !byName.isEmpty else{return nil}
//
//        let queryItems = [
//            URLQueryItem(name: "by-name", value: byName),
//            URLQueryItem(name: "api_key", value: "RGAPI-aec38a21-3028-4da7-be78-714a7416cb16"),
//            ]
//        var components = URLComponents(string: "https://tr1.api.riotgames.com/lol/summoner/v4/summoners/")
//        components?.queryItems = queryItems
//        return components?.url
//    }
//}
