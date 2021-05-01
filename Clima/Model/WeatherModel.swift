//
//  WeatherModel.swift
//  Clima
//
//  Created by Eleanor Kalu on 01.05.21.
//  Copyright © 2021 Blarnya. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    let conditionId : Int
    let cityName : String
    let temperature: Double
    
    // a computed property is a variable where you can embed switch statements and or computed statements
    // computed properties always have to be a var.
    //
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionID {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
    
    
}



