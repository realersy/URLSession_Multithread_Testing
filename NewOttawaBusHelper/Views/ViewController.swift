//
//  ViewController.swift
//  NewOttawaBusHelper
//
//  Created by Ersan Shimshek on 08.12.2022.
//

import UIKit



class ViewController: UIViewController {
    
    var label: UILabel!
    var weatherViewModel = WeatherViewModel()
    let url  = "https://api.openweathermap.org/data/2.5/weather?q=Ottawa&appid=5bf61704b3905dfd0002f0f494760d6b&units=metric"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label = UILabel(frame: view.frame)
        
        
        label.textAlignment = .center
        DispatchQueue.main.async {
            self.weatherViewModel.fetchWeather(url: self.url) { temperature in
                self.label.text = "\(Int(temperature))°C"
                self.label.font = UIFont.systemFont(ofSize: 15)
            }
        }
       
        view.addSubview(label)
        
    }
}

