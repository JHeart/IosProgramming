//
//  ViewController.swift
//  ch05
//
//  Created by ipp13 on 2018. 4. 18..
//  Copyright © 2018년 ipp13. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_COLUMN
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
//        return imageFileName[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
        let imageView = UIImageView(image:imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width:100, height:150)
        
        let descView = UILabel()
        descView.text = descriptions[row]
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        //add childrem
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(descView)
        return imageView
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        lblimageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat{
        return PICKER_VIEW_HEIGHT
    }
    
    

    @IBOutlet weak var pikerimage: UIPickerView!
    @IBOutlet weak var lblimageFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    let MAX_ARRAY_NUM = 10
    var imageArray = [UIImage?]()
    let PICKER_COLUMN = 1
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    
    var descriptions = ["첫번째","두번째","세번째","네번째","다섯번째","여섯번째","첫번째","두번째","첫번째","두번째"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblimageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

