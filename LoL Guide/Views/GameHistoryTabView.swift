//
//  GameHistoryView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 16.05.2022.
//

import SwiftUI

struct GameHistoryView: View {
   @State var isWin : Bool = false
    var body: some View {
       
        VStack{
        HStack {
            VStack(spacing: 5){
            Image("Aatrox")
                    .clipShape(Circle())
           
        }
            VStack{
            Image("SummonerFlash")
                .clipShape(Circle())
                Image("SummonerDot")
                    .clipShape(Circle())
            }
            .padding(.vertical)
            VStack{
                Image("Predator")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                
                Image("7201_Precision")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
            }
            .padding(.vertical)
            
            Text("Score")
                .bold()
                .font(.system(size: 40))
                .offset(x:0, y: 0)
        
        }
            
            HStack{
            Image("1001")
                  
                    .clipShape(Circle())
            Image("1028")
                    
                    .clipShape(Circle())
            Image("1004")
                    
                    .clipShape(Circle())
            Image("1027")
                   
                    .clipShape(Circle())
            Image("1026")
                   
                    .clipShape(Circle())
            Image("1011")
                
                    .clipShape(Circle())
            }
            
            
            
        }
            
        
    
    }
}

struct GameHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        GameHistoryView()
            .previewLayout(.sizeThatFits)
        
            
    }
}
