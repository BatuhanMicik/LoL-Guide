//
//  TabView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 19.05.2022.
//

import SwiftUI

struct MainTabView: View {
//    @StateObject var DragonData = DDragonViewModel()
//    @StateObject var RiotData = RiotViewModel()
   @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection : $selectedTab){
            HomeViews()
                .onAppear {
                    self.selectedTab = 0
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)
            ChampionView()
                .onAppear {
                    self.selectedTab = 1
                }
                .tabItem {
                    Image(systemName: "crown.fill")
                    Text("Champions")
                }.tag(1)
            SettingsView()
                .onAppear {
                    self.selectedTab = 2
                }
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }.tag(2)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
             
        }

    }

