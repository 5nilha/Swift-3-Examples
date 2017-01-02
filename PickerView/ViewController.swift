//
//  ViewController.swift
//  PickerView
//
//  Created by Fabio Quintanilha on 1/2/17.
//  Copyright © 2017 Studio. All rights reserved.


import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    
    // We shold create the array with all itensthat will show in the pickerview
    let foods = ["Apples", "Bananas", "Corn", "Beans", "Tomatoes"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        //Define how many sections we have in one row
    }

    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return foods[row]
        
        //Define what text should be in each row
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return foods.count
         //Define how many rows we want
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = foods[row]
        // Display the selected row in our label
    }
    
   

}

