//
//  ContentView.swift
//  MyWeather
//
//  Created by Chandan on 11/03/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var weatherService = WeatherService()
    
    var body: some View {
           
        ZStack {
            ForEach(weatherService.weatherData) { item in
                
                BackgroundView(weatherType: item.weather[0].main!)
                
                VStack(alignment: .center) {
                    Spacer()
                    CitySearchView(weatherService: weatherService, citySearchInput: weatherService.city)
                        .padding(.horizontal, 20)
                    //Text(weatherService.city)
                    Spacer()
                    
                    HeaderView(name: item.name)
                    Spacer()
                    
                    CurrentWeatherView(weatherType: item.weather[0].main!, temperature: item.main.temp)
                    Spacer()
                    
                    FooterView()
                    Spacer()
                        
                }
                }
        }
        
        .onAppear() { weatherService.getWeather(cityName: weatherService.city) } // first time load content based on city name, we passed weatherService.city which is Initially gwalior.
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
