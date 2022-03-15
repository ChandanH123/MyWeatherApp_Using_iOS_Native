//
//  CurrentWeatherView.swift
//  MyWeather
//
//  Created by Chandan on 11/03/22.
//

import SwiftUI

struct CurrentWeatherView: View {
    
    let weatherType: String
    let temperature: Double
    var kelvinToCelsius: Int {
        return Int(temperature - 273.15)
    }
    
    func weatherIcon(iconeName: String) -> AnyView {
         
           return AnyView(Image(systemName: iconeName).resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white))
    }
        
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(spacing: 20) {
                switch(weatherType) {
                case "Thunderstorm":
                    weatherIcon(iconeName: "cloud.bolt.fill")
                case "Drizzle":
                    weatherIcon(iconeName: "cloud.drizzle.fill")
                case "Rain":
                    weatherIcon(iconeName: "cloud.heavyrain.fill")
                case "Snow":
                    weatherIcon(iconeName: "wind.snow")
                case "Atmosphere":
                    weatherIcon(iconeName: "smoke.fill")
                case "Clear":
                    weatherIcon(iconeName: "sun.max.fill")
                case "Clouds":
                    weatherIcon(iconeName: "cloud.fill")
                default:
                    weatherIcon(iconeName: "globe.americas.fill")                }

                Text("\(weatherType)")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .textCase(.uppercase)
                    .foregroundColor(.white)

                }
            
            HStack {
                Text("\(kelvinToCelsius)º")
                    .font(.system(size: 150))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.white)
                }
        }
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(weatherType: "Drizzle", temperature: 303.66).previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
