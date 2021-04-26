//
//  WeatherData.swift
//  Clima
//
//  Created by Eleanor Kalu on 26.04.21.
//  Copyright © 2021 Blarnya. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name : String
    let main: Main
}


struct Main: Decodable {
    let temp: Double
}
