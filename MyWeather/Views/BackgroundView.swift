//
//  BackgroundView.swift
//  MyWeather
//
//  Created by Chandan on 11/03/22.
//

import SwiftUI

struct BackgroundView: View {
    
    let weatherType: String
    func weatherImage(imageName: String) -> AnyView {
         
        return AnyView(Image(imageName).resizable()
                            .scaledToFill()
                            .ignoresSafeArea(.all,edges: .all)
                            .opacity(0.5)
                            )
    }
    
    var body: some View {
        
        ZStack {
        switch(weatherType) {
        case "Thunderstorm":
            AnyView(weatherImage(imageName: "thunderstorm"))
        case "Drizzle":
            AnyView(weatherImage(imageName: "drizzle"))
        case "Rain":
            AnyView(weatherImage(imageName: "rain"))
        case "Snow":
            AnyView(weatherImage(imageName: "snow"))
        case "Atmosphere":
            AnyView(weatherImage(imageName: "atmosphere"))
        case "Clear":
            AnyView(weatherImage(imageName: "clear"))
        case "Clouds":
            AnyView(weatherImage(imageName: "clouds"))
        default:
            AnyView(weatherImage(imageName: "atmosphere"))
        }
        
        }.preferredColorScheme(.dark)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(weatherType: "Clouds")
            
    }
}
