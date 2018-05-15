//
//  ViewController.swift
//  ch05_pickerview
//
//  Created by ipp13 on 2018. 4. 24..
//  Copyright © 2018년 ipp13. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageFileName = ["1.jpg", "2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"]
    var descritption = ["1.jpg", "2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"]
    var imageArray = [UIImage]()
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return imageFileName.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
//        return imageFileName[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
        
        var stackView: UIStackView!
//        if(view == nil){
//            stackView = UIStackView()
//            stackView.addArrangedSubview(UIImageView())
//            stackView.addArrangedSubview(UILabel())
//        }else{
//            stackView = view as! UIStackView
//        }

        if let sv = view {
              stackView = sv as! UIStackView
                  }else{
            
            stackView = UIStackView()
            stackView.addArrangedSubview(UIImageView())
            stackView.addArrangedSubview(UILabel())
                 }
//
//        let imageView = UIImageView(image:imageArray[row])
//        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
//
//        let descView = UILabel()

        let imageView = stackView.subviews[0] as! UIImageView
        let descView = stackView.subviews[1] as! UILabel
        
        
        imageView.image = imageArray[row]
        descView.text = descritption[row]
        descView.backgroundColor = UIColor.cyan
        
        
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        
//        //add children
//        stackView.addArrangedSubview(imageView)
//        stackView.addArrangedSubview(descView)
        
        imageView.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 0).isActive = true
        imageView.rightAnchor.constraint(equalTo: stackView.leftAnchor, constant: 100).isActive = true
        
        descView.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 0).isActive = true
        descView.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: 0).isActive = true
        return stackView
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        lblimageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
        
      
        
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat{
        return PICKER_VIEW_HEIGHT
    }
    

    
   
    
    
    
    
    

    @IBOutlet weak var pikerImage: UIPickerView!
    @IBOutlet weak var lblimageFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image!)
        }
        
        lblimageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

