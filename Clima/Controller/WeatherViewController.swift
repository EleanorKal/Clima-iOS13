//
//  ViewController.swift
//  Clima
//
//  Created by Eleanor Kalu on 21/04/2021.
//  Copyright © 2021 Blarnyä. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // the line of code tells the textfield to report back to the view controller
        searchTextField.delegate = self
        
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        print(searchTextField.text!)
        cityLabel.text = searchTextField.text // my code
        //tells the keyboard to disable once the text is entered
        searchTextField.endEditing(true)
    }
    
    // because of the searchTextField.delegate = self - the following method
    // will send a true or false from the Go / return key to the view controller
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(searchTextField.text!)
        cityLabel.text = searchTextField.text
        searchTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something here"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchTextField.text = ""
    }
    
}

