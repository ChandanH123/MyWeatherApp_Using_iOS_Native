//
//  FooterView.swift
//  MyWeather
//
//  Created by Chandan on 11/03/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("Made By")
                .foregroundColor(.white)
            
            Text("Chandan Hayaran")
                .font(Font.system(size: 18))
                .fontWeight(.light)
                .foregroundColor(.white)
                .textCase(.uppercase)
            
            
           
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
