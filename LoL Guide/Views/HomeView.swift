//
//  HomeView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 28.04.2022.
//

import SwiftUI


   

struct HomeView: View {
    var body: some View {
        VStack{
            NavigationView{
                
                    
                
            }.navigationBarTitle(Text("The Title"), displayMode: .inline)
            .frame(width: 432, height: 100, alignment: .top)
        Divider()
        ScrollView{
            
                ScrollView(.horizontal){
                    LazyHStack(spacing: 10){
                        ChampionsView()
                        ChampionsView()
                        ChampionsView()
                        ChampionsView()
                        ChampionsView()
                        
                    }
                }
            
           
        }
        
        }
    }
   

}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            
    }
}
