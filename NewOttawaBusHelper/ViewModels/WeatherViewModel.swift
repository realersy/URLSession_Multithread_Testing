//
//  WeatherViewModel.swift
//  NewOttawaBusHelper
//
//  Created by Ersan Shimshek on 08.12.2022.
//

import Foundation

public class WeatherViewModel{
    
    public func fetchWeather(url: String, completion: @escaping (Double) -> ()) {
            

        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { (data, response, error) -> Void  in
            guard let data = data, error == nil else{
                print("something went wrong")
                return
            }

            var res: WeatherModel!

            do{
                res = try JSONDecoder().decode(WeatherModel.self, from: data)
            }
            catch{
                print("error catching")
            }
            
            completion(res.main.temp)

        }).resume()
        

    }
}
