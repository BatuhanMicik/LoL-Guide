//
//  ItemHomeView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 5.06.2022.
//

import SwiftUI
import Kingfisher

struct ItemHomeView: View {
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

struct ItemHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ItemHomeView()
    }
}
