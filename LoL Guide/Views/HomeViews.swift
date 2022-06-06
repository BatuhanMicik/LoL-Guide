//
//  HomeViews.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 1.06.2022.
//

import SwiftUI

struct HomeViews: View {

    @ObservedObject var vm = DDragonViewModel()
    @ObservedObject var riot = RiotViewModel()
    @State private var selectedChampion : Datum? = nil
    @State private var showDetailView: Bool = false
    
    
    var body: some View {
        
        NavigationView{

            VStack{
                SearchView(searchText: $riot.searchName)
                    .padding()
                    .onSubmit(of: .search) {
                        riot.getSummonerInfo()
                    }
                ScrollView(.horizontal){
                Divider()
                    VStack(){
                LazyHStack(){
                    ForEach(vm.champName){ champions in
                        ChampionHomeView().onTapGesture {
                            segue(champion: champions)
                        }

                    }
                    .padding(10)
                }
                .background(NavigationLink(destination: ChampionDetailPageView(), isActive: $showDetailView, label: {
                    EmptyView()
                })
                )

                    }
            }


            }

            .navigationTitle("LoL Guide")
           
            }

    }
    private func segue(champion: Datum?){
        selectedChampion = champion
        showDetailView.toggle()
    }
}

struct HomeViews_Previews: PreviewProvider {
    static var previews: some View {
        HomeViews()
    }
}
