//
//  ApiCall.swift
//  MyWeather
//
//  Created by Chandan on 11/03/22.
//

import Foundation

enum myError: Error {
    case incorrectURL(value: String)
}

class WeatherService: ObservableObject {
    
    @Published var weatherData = [WeatherData]()
    @Published var city = "Gwalior"
    
    func getWeather(cityName:String) {
        // guard let is only work inside the function just beacuse it returns
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=1cbe2712a10785518fd664e1ef30f64d")
                
        else {
            print("invalid url")
            
            return
        }
        print(url)

        // 1. create an instance of URLSession
        // 2. create an instance of URLRequest
        // 3. create an instance of URLSessionDataTask

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            do {
            // parse the data received and use it whichever way you
            if let data = data {
//                let posts = try! JSONDecoder().decode([Post].self, from: data)
//                print(posts)
                let weatherData = try! JSONDecoder().decode(WeatherData.self, from: data)
                print()
                DispatchQueue.main.async {
                self.weatherData = [weatherData]
                }
//                print(self.weatherData)
                }
            else {
                print("data is not received")
                throw myError.incorrectURL(value: "Incorrect URL")
            }
            }
            catch(let error) {
                switch error {
                case myError.incorrectURL(let hello):
                    print(hello)
                default:
                    print("No error")
                }
                
            }
        }.resume()

    }
}

