//
//  ChampionsView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 16.05.2022.
//

import SwiftUI

struct ChampionsView: View {
    let champion : Champions
    
    var body: some View {
        Image("Aatrox")
            
            .clipShape(Circle())
            .shadow(radius: 10)
            .background(Circle())
            .frame(width: 110, height: 110, alignment: .center)
            
        
            
        }
    }


struct ChampionsView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionsView(champion: dev.champion)
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
