//
//  ViewController.swift
//  Swift Project 06
//
//  Created by Tommy Lau on 12/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

 
    @IBOutlet weak var labelDateAndTime: UILabel!
    
    let locale = Locale(identifier: "ko_kr")
    var formatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        if let myTimeZone = TimeZone(identifier: "Asia/Seoul") {
            print("\(myTimeZone.identifier)")
        }

        formatter.locale = self.locale
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium

        labelDateAndTime.text = formatter.string(from: Date())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 

}

