//
//  ContentView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 21.03.2022.
//

import SwiftUI

//class fetchObject : ObservableObject{
//    @Published var champions = [ChampionsData]()
//
//    init(){
//        loadData()
//    }
    
//    func loadData(){
//        guard let path = Bundle.main.url(forResource: "champion", withExtension: "json") else {return}
//                do{
//                    let data = try Data(contentsOf: path)
//                    DispatchQueue.main.async {
//                        self.champions = try JSONDecoder().decode([ChampionsData].self, from: data)
//                    }
//                }catch{
//                    print("error", error)
//                }
        
//    }
//}


struct ContentView: View {

//  @ObservedObject var vm = DDragonViewModel()
   
        var body: some View {
            List{
               
                        
            }
                
                
            

        }
        
        

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
