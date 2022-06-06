//
//  DragonService.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 5.06.2022.
//

import Foundation
import Combine

class DragonService{
    @Published var champions: [Datum] = []
    var championSubscription : AnyCancellable?
    
    init(){
        getChamps()
    }
    
    private func getChamps(){
        guard let url = URL(string: "http://ddragon.leagueoflegends.com/cdn/12.9.1/data/en_US/championFull.json") else {return}
        
        championSubscription = URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap { (output) -> Data in
                
                guard let response = output.response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300 else{
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .receive(on: DispatchQueue.main)
            .decode(type: [Datum].self, decoder: JSONDecoder())
            .sink { (completion) in
                switch completion{
                case .finished:
                    break
                case .failure(let error):
                    print(error.localizedDescription)
                }
            } receiveValue: { [weak self](returnedChampions) in
                self?.champions = returnedChampions
                self?.championSubscription?.cancel()
            }
            

    }
}
