//
//  CitySearchView.swift
//  MyWeather
//
//  Created by Chandan on 12/03/22.
//

import SwiftUI

struct CitySearchView: View {
    
    @ObservedObject var weatherService = WeatherService()
    @State var citySearchInput: String
    
    var body: some View {
            HStack {
                    TextField("Enter city name here", text: $citySearchInput)
                        .font(.title2)
                        .keyboardType(/*@START_MENU_TOKEN@*/.default/*@END_MENU_TOKEN@*/)
                        .padding()
                        .foregroundColor(.black)
        
                Button(action: {weatherService.city = citySearchInput //it will change the weatherService.city to latest city that user will input.
                    weatherService.getWeather(cityName: citySearchInput)
                }, label: {
                    Image(systemName: "magnifyingglass.circle")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .trailing)
                            .padding()
                        .foregroundColor(.black)
                })
                        
                    
                }
            .background(RoundedRectangle(cornerRadius: 20))
            .foregroundColor(.white)
            
        
        
        
    }
}

struct CitySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CitySearchView(citySearchInput: "")
            .previewLayout(.sizeThatFits)
            
            
    }
}
