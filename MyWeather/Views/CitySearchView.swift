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
                    TextField("", text: $citySearchInput)
                    .placeholder(when: citySearchInput.isEmpty) {
                           Text("Enter city name here").foregroundColor(.black)
                            .frame(width: 200)
                   }.font(.title2)
                        .keyboardType(/*@START_MENU_TOKEN@*/.default/*@END_MENU_TOKEN@*/)
                        .padding()
                        .foregroundColor(.black)
                        
        
                Button(action: {weatherService.city = citySearchInput //it will change the weatherService.city to latest city that user will input.
                    weatherService.getWeather(cityName: citySearchInput)
                }, label: {
                    Image(systemName: "magnifyingglass.circle.fill")
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
