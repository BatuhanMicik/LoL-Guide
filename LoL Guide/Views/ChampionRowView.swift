//
//  ChampionRowView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.05.2022.
//

import SwiftUI
import Kingfisher

struct ChampionRowView: View {
    
    
    @ObservedObject var vm = DDragonViewModel()
    
    var body: some View {
        Column
    }
}

struct ChampionRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionRowView()
   
            .previewLayout(.sizeThatFits)
    }
    
}
extension ChampionRowView{
    private var Column: some View{
        HStack(spacing: 0){
            KFImage(URL(string: "https://ddragon.leagueoflegends.com/cdn/12.10.1/img/champion/\(vm.champions?.id ?? "").png"))
                .clipShape(Circle().size(width: 123, height: 120))
                .frame(width: 100, height: 150)
                .frame(minWidth: 130)
        VStack(spacing: 0){
            
            
            Text("\(vm.champions?.name ?? "")")
                .font(.system(size: 30))
                .bold()
                .padding(.leading, 0)
                .foregroundColor(Color.black)
                
            
            Text("\(vm.champions?.title ?? "")")
                    .font(.system(size: 15))
                    .italic()
            
            
                
        }
           Spacer()
            
            
            
    }
    }
}
