//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Tu Shaun Ting on 29/9/14.
//  Copyright (c) 2014 Tu Shaun Ting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsText: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var convertRealButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let yearsFromText = humanYearsText.text.toInt()!
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(yearsFromText * 7)" + " dog years"
        
        humanYearsText.resignFirstResponder()
        
    }

    @IBAction func convertRealButtonPressed(sender: UIButton) {
        let yearsFromRealText = humanYearsText.text
        let optionalDoubleFromRealText = Double((yearsFromRealText as NSString).doubleValue)
        dogYearsLabel.hidden = false
        if optionalDoubleFromRealText <= 2 {
            dogYearsLabel.text = "\(optionalDoubleFromRealText * 10.5)" + " real dog years"
        }
        else {
            dogYearsLabel.text = "\(21 + ((optionalDoubleFromRealText - 2) * 4))" + " real dog years"
        }
        
        humanYearsText.resignFirstResponder()

    }
}

