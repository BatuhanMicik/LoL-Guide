//
//  ChampionDataService.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 25.05.2022.
//

import Foundation
import Combine

class ChampionsDataService{
    @Published var championList: NewChampions? = nil

    var championSubscription: AnyCancellable?

    init(){
        getChampionss()
    }

    private func getChampionss(){
        guard let url = URL(string: "http://ddragon.leagueoflegends.com/cdn/12.9.1/data/en_US/champion.json")
        else {return}

        championSubscription = NetworkManager.download(url: url)
            .decode(type: NewChampions.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnedChamps) in
                self?.championList = returnedChamps
                self?.championSubscription?.cancel()
            })

    }
}
