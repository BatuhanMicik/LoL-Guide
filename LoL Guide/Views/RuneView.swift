//
//  RuneView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 23.05.2022.
//

import SwiftUI

struct RuneView: View {
    let rune : Runes
    @EnvironmentObject private var vm : DDragonViewModel
    var body: some View {
        HStack{
            Image("\(rune.icon)")
                .resizable()
                .clipShape(Circle())
        }
    }
}

struct RuneView_Previews: PreviewProvider {
    static var previews: some View {
        RuneView(rune: dev.runes)
    }
}
