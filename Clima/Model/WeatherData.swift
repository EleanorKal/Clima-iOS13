//
//  WeatherData.swift
//  Clima
//
//  Created by Eleanor Kalu on 26.04.21.
//  Copyright © 2021 Blarnya. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name : String
    let main: Main
    let weather: [Weather]
}


struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
    let icon: String
}
