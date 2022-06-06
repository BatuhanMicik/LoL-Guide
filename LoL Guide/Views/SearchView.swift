//
//  SearchView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 31.05.2022.
//

import SwiftUI

struct SearchView: View {
   @Binding var searchText: String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)

            TextField("Searching", text: $searchText)
                .overlay(Image(systemName: "xmark.circle.fill")
                    .padding()
                    .offset(x:10)
                    .opacity(searchText.isEmpty ? 0.0: 1.0)
                    .onTapGesture {
                        searchText = ""
                    }
                         ,alignment: .trailing)
        }
        .font(.headline)
        .padding()
        .background(RoundedRectangle(cornerRadius: 25)
            .fill(Color.theme.background)
            .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0))

    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: .constant(""))
    
            .previewLayout(.sizeThatFits)
    }
}
