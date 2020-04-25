//
//  TestResultVC.swift
//  Corona Test App
//
//  Created by Bekir Duran on 17.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import UIKit

class TestResultVC: UIViewController {

    var score:Int?
    var bgColor:UIColor?
    var advice:String?
    var image:String?
    
    @IBOutlet weak var labelAdvice: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        labelAdvice.text = advice
        imageView.image = UIImage(named: image!)
        self.view.backgroundColor = bgColor
       
    }
    

    @IBAction func Buttongotomain(_ sender: UIButton) {
        
        view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        
    }
    
}
