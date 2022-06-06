//
//  ProfileView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 16.05.2022.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    @ObservedObject var vm = RiotViewModel()
    var body: some View {
        VStack(alignment: .center){
            profileStart
                .frame(height : .infinity)
            Divider()
                .padding(.vertical)
            ScrollView{
                LazyVStack{
                    
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
   
}
extension ProfileView{
    var profileStart : some View{
       
            ZStack(alignment : .bottomLeading){
                Image("Aatrox_0")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.8)
                    .frame(width: 300, height: 300)
                    
                VStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .frame(width: 20, height: 16)
                            .foregroundColor(Color.white)
                            .offset(x: -70, y: -60)
                            
                    }
                    
                    HStack {
                        ZStack {
                            Image("4980")
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                
                                .frame(width: 100, height: 100)
                            
                            
                            Text("\(vm.summonerInfos?.summonerLevel ?? 0)")
                                
                                .bold()
                                .foregroundColor(Color.theme.textColor)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.theme.background).shadow(radius: 3))
                                .offset(x: 0, y: 50)
                            
                        }
                        .offset(x: -20, y: 8)
                        
                        Text("\(vm.summonerInfos?.name ?? "")")
                            .foregroundColor(Color.white)
                            .bold()
                            .font(.system(size: 25))
                            .offset(x: -10, y: 0)
                        
                    }
                }
            }
            
            
            
            
            
            
        }
    
}
