//
//  HomeViews.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 1.06.2022.
//

import SwiftUI

struct HomeViews: View {
    
    @ObservedObject private var vm = DDragonViewModel()
    @ObservedObject var riot = RiotViewModel()
    @State var searchText: String
    @State var shouldOpenView = false
    @State var summonerInfo: SummonerInfo?
    @State private var selectedChampion : Datum? = nil
    @State private var showDetailView: Bool = false
    @State private var champions : [Datum]?
    @State private var selectedChamp : Datum?
    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView{
            
            VStack{
            HStack{
                NavigationLink(destination: ProfileView(summonerInfo: self.summonerInfo) , isActive: $shouldOpenView) {
                    Image(systemName: "magnifyingglass")
                        .padding()
                        .foregroundColor(.gray)
                        .onTapGesture {
                            if !searchText.isEmpty{
                                riot.getSummonerInfo(name: searchText, completion: { response in
                                    if let summonerInfo = response{
                                        self.summonerInfo = summonerInfo
                                        self.shouldOpenView = true
                                    }
                                })
                            }
                            
                        }
                }

                
                TextField("Enter your name", text : $searchText)
                    .disableAutocorrection(true)
                    .overlay(Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x:160)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture(perform: {
                            searchText = ""
                        }))
            }
            .font(.headline)
            .padding()
            .background(RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0))
            
            
            .onAppear {
                        vm.fetchAllChampions { (data, keys) in
                            champions = data
                        }
                    }
                ScrollView(){
                    Divider()
                    VStack(){
                        LazyVGrid(columns: gridItemLayout, spacing: 10){
                            if let champList = self.champions {
                                ForEach(champList, id:\.id) { champion in
                                    ChampionHomeView( championModel: champion).onTapGesture {
                                        selectedChamp = champion
                                        segue(champion: selectedChampion)
                                    }
                                }
                                .padding(10)
                            }
                        }
                        .background(NavigationLink(destination: SkinsView(champion: selectedChamp), isActive: $showDetailView, label: {
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
        HomeViews(searchText: "")
        
       
    }
}
