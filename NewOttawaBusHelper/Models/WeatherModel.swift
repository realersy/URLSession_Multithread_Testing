//
//  WeatherModel.swift
//  NewOttawaBusHelper
//
//  Created by Ersan Shimshek on 08.12.2022.
//

import Foundation


struct WeatherModel:Codable{
    
    struct Main: Codable{
        let temp: Double
    }
    let main: Main
}


