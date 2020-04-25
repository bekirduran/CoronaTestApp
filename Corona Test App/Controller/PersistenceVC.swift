//
//  PersistenceVC.swift
//  Corona Test App
//
//  Created by Bekir Duran on 19.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import UIKit

class PersistenceVC: UIViewController {

    var testbrain = TestBrain()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persisupdate()

    }
    
    func persisupdate() {
        labelInfo.text = testbrain.getPersis()
        imageView.image = UIImage(named: testbrain.getPersisImage())
    }
    

    @IBAction func buttonBackNext(_ sender: UIButton) {
        if sender.currentTitle == "Next" {
            testbrain.nextPersis()
            persisupdate()
        }
        else {
            print("back cliked")
            testbrain.backPersis()
            persisupdate()
            
        }
    }
    
    
    
}
