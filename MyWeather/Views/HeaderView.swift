//
//  HeaderView.swift
//  MyWeather
//
//  Created by Chandan on 11/03/22.
//

import SwiftUI

struct HeaderView: View {
    
    var name: String
    var body: some View {
        VStack {
            Text(name)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(.white)
                .textCase(.uppercase)
            VStack(spacing: 5) {
                Text("\(Date.now.formatted(date: .complete, time: .omitted))")
                Text("\(Date.now.formatted(date: .omitted, time: .standard))")
            }.foregroundColor(.white)
            
           
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(name: "gwalior")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
