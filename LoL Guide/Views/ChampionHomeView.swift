//
//  ChampionHomeView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 31.05.2022.
//

import SwiftUI
import Kingfisher

struct ChampionHomeView: View {

    @ObservedObject var vm = DDragonViewModel()
    var body: some View {
        HStack {
                    VStack(spacing: 5){
                        KFImage(URL(string: "https://ddragon.leagueoflegends.com/cdn/12.10.1/img/champion/\(vm.champions?.name ?? "").png"))
                    .clipShape(Circle())
                        Text("\(vm.champions?.name ?? "")")
            
        }
            
        }

    }
}

struct ChampionHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionHomeView()
            .previewLayout(.sizeThatFits)
    }
}
