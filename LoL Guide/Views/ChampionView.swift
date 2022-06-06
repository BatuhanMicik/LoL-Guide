//
//  ChampionView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.05.2022.
//

import SwiftUI

struct ChampionView: View {
    @ObservedObject var vm = DDragonViewModel()
    @State private var champName = ""
    @State private var selectedChampion : Datum? = nil
    @State private var showDetailView: Bool = false
    var body: some View {
        NavigationView{
        ScrollView(.vertical) {
            SearchView(searchText: $champName)
            
            .padding()

            ForEach(0...5, id:\.self){ _ in
                ChampionRowView().onTapGesture {
                    segue(champion: vm.champions)
                }
                    
                }
                
            
        }
        .navigationTitle("Champions")
        .background(NavigationLink(destination: ChampionDetailPageView(), isActive: $showDetailView, label: {
            EmptyView()
        })
        )
            
        }
       
    
    }
    private func segue(champion: Datum?){
        selectedChampion = champion
        showDetailView.toggle()
    }
  
}


struct ChampionView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionView()
//            .environmentObject(DDragonViewModel())
            
  

    }
}
