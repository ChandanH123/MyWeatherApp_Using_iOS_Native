//
//  Weather.swift
//  MyWeather
//
//  Created by Chandan on 11/03/22.
//

import Foundation

struct WeatherData: Codable, Identifiable {
    let coord: Coord
    let weather: [Weather]
    let base: String
    let main: Main
    let visibility: Double
    let wind: Wind
    let clouds: Clouds
    let dt: Double
    let sys: Sys
    let timezone: Int
    let id: Int
    let name: String
    let cod: Int
}

struct Coord: Codable {
        let lon: Double
        let lat: Double
}

struct Weather: Codable {
            let id: Int?
            let main: String?
            let description: String?
            let icon: String?
        }

struct Main: Codable {
    let temp: Double
    let feels_like: Double?
    let temp_min: Double?
    let temp_max: Double?
    let pressure: Double?
    let humidity: Double?
    let sea_level: Double?
    let grnd_level: Double?
}

struct Wind: Codable {
    let speed: Double?
    let deg: Double?
    let gust: Double?
}

struct Clouds: Codable {
    let all: Double?
}

struct Sys: Codable {
    let country: String?
    let sunrise: Double?
    let sunset: Double?
}
