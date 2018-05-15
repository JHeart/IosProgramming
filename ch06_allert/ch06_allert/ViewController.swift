//
//  ViewController.swift
//  ch06_allert
//
//  Created by ipp13 on 2018. 4. 24..
//  Copyright © 2018년 ipp13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lampImg: UIImageView!
    
    let imgOn = UIImage(named: "lamp-on.png")
    
    let imgOff = UIImage(named: "lamp-off.png")
    
    let imgRemove = UIImage(named: "lamp-remove.png")
    
    var isLampOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lampImg.image = imgOn
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func myHandler(action: UIAlertAction)->(){
        lampImg.image = imgOff
        isLampOn = false
    }
    
    @IBAction func btnlampOn(_ sender: UIButton) {
        
        if(isLampOn == true){
        let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: UIAlertControllerStyle.alert)
            
        let onAction = UIAlertAction(title: "네,알겠습니다.", style: UIAlertActionStyle.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }else{
            lampImg.image = imgOn
            isLampOn=true
        }
        
    }
    

    @IBAction func btnlampOff(_ sender: UIButton) {
        if isLampOn{
            let lampOffAlert = UIAlertController(title: "램프끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertControllerStyle.alert)
 
            /*
            let offAction = UIAlertAction(title: "네", style: UIAlertActionStyle.default, handler: {
                ACTION in self.lampImg.image = self.imgOff
                self.isLampOn = false
                
            })
 */
            /*
            let offAction = UIAlertAction(title: "네", style: UIAlertActionStyle.default, handler: myHandler)
            */
            
            let offAction = UIAlertAction(title: "네", style: UIAlertActionStyle.default, handler: {
                (ACTION: UIAlertAction) in self.lampImg.image = self.imgOff
                self.isLampOn = false
                
            })
            
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertActionStyle.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            
            present(lampOffAlert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func btnlampRemove(_ sender: UIButton) {
    }
}

