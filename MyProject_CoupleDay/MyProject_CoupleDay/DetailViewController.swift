//
//  DetailViewController.swift
//  Project_16
//
//  Created by 章航伟 on 06/02/2017.
//  Copyright © 2017 Harvie. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    var imageName: String = "1" 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: imageName)
    }

    @IBAction func actionSheet(_ sender: UIBarButtonItem) {
        
        let sheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let reportAction = UIAlertAction(title: "report", style: .destructive) { _ in
            print("report")
        }
        
        let shareAction = UIAlertAction(title: "share", style: .default) { _ in
            print("share")
        }
        
        let saveAction = UIAlertAction(title: "save image", style: .default) { _ in
            print("save image")
        }
        
        let copyAction = UIAlertAction(title: "copy link", style: .default) { _ in
            print("copy link")
        }
        
        let cancleAction = UIAlertAction(title: "cancle", style: .cancel) { _ in
            print("cancle")
        }

        sheet.addAction(reportAction)
        sheet.addAction(shareAction)
        sheet.addAction(saveAction)
        sheet.addAction(copyAction)
        sheet.addAction(cancleAction)
        
        present(sheet, animated: true, completion: nil)
    }
}
