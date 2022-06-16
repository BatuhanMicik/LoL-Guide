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
    @State private var selectedChamp : Datum?
    @State private var champions : [Datum]?
    var body: some View {
        NavigationView{
        ScrollView(.vertical) {
        
//            HStack{
//                Image(systemName: "magnifyingglass")
//
//
//                TextField("Search for Champions", text: $filteredChampion)
//                    .disableAutocorrection(true)
//                    .overlay(Image(systemName: "xmark.circle.fill")
//                        .padding()
//                        .offset(x: 10)
//                        .opacity(champName.isEmpty ? 0.0 : 1.0)
//                        .onTapGesture {
//                            champName = ""
//                        }, alignment: .trailing)
//
//            }
//            .font(.headline)
//            .padding()
//            .background(
//            RoundedRectangle(cornerRadius: 25)
//                .fill(Color.theme.background)
//                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0))
//            .padding()
            Text("")
                .onAppear {
                    vm.fetchAllChampions { (data, keys) in
                        champions = data
                        
                    }
                }
            LazyVStack{
                if let champList = self.filteredChampion {
                    ForEach(champList, id:\.id) { champion in
                    ChampionRowView( championModel: champion).onTapGesture {
                        selectedChamp = champion
                        segue(champion: selectedChamp)
                    }
                }
                
        }
            }
            .background(NavigationLink(destination: ChampionDetailView(champion: selectedChamp), isActive: $showDetailView, label: {
                EmptyView()
            })
        
      )
            .searchable(text: $champName, prompt: "Search for Champions")

        }
        .navigationTitle("Champions")
        }
     

        }
    private func segue(champion: Datum?){
        selectedChampion = champion
        showDetailView.toggle()
    }
    var filteredChampion : [Datum]?{
        if champName.isEmpty{
            return self.champions
        }else{
            return champions?.filter {$0.name.localizedCaseInsensitiveContains(champName) }
        }
    }
    
    }
    
  



struct ChampionView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionView()
 
            
  

    }
}
