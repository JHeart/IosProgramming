//
//  ViewController.swift
//  FahrenheittoCelsius
//
//  Created by ipp13 on 2018. 4. 18..
//  Copyright © 2018년 ipp13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFahrenheit: UITextField!
    @IBOutlet weak var lblCelcius: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var celcius: Double?{
        didSet{
            if let degree = celcius {
                lblCelcius.text = String(degree)
            }else{
                lblCelcius.text = "0"
            }
        }
    }
    
    var fahrenheitValue: Double?{
        didSet{
            if let degree = fahrenheitValue{
            
            celcius = (fahrenheitValue! - 32) * (5/9)
            }else{
                celcius = nil
            }
        }
    }

 
    @IBAction func editingChanged(_ sender: UITextField) {
        /*
        if let text = txtFahrenheit.text {
            
            let fahrenheit = Double(text)
            let celsius = (fahrenheit! - 32)*(5/9)
            lblCelcius.text = String(celsius)
        }
 */
        
        if let text = txtFahrenheit.text {
            
            fahrenheitValue = Double(text)
            
        }
        
    }
   
    
    @IBAction func onViewClicked(_ sender: UITapGestureRecognizer) {
        txtFahrenheit.resignFirstResponder()
    }
}

