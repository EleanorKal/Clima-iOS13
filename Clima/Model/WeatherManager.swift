//
//  WeatherManager.swift
//  Clima
//
//  Created by Eleanor Kalu on 23.04.21.
//  Copyright © 2021 Blarnya. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=ae60a1766fa3448bf436b7bea399d40a&units=metric"
    var celius : String = "0"
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
        print(urlString)
    }
    
    func performRequest(urlString: String) {
        // 4 steps of networking
        // 1. Create a URL
        if let url = URL(string: urlString) {
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)
            // 3. Give the session a task - the void section signifies that the output needs to take  function
            //    the completionHandler will be implemented by the task.resume()
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            // 4. Start the task
            task.resume()
            
        }
        
    }
    
    // the void input means that nothing will be returned
    func handle(data: Data?, response: URLResponse?, error: Error?) -> Void {
        if error != nil {
            print(error!)
            return  // this return means exit out of this function and do not continue - i.e., do nothing if an error is returned
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString ?? "")
        }
    }
    

    
}
