//
//  CircleButtonView.swift
//  LoL Guide
//
//  Created by Batuhan Mıcık on 16.05.2022.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.title)
            .foregroundColor(Color.theme.textColor)
            .frame(width: 200, height: 50)
            .background(
                Capsule()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(color: Color.theme.textColor.opacity(0.55), radius: 10, x: 0, y: 0)
            .padding()
            
            
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
