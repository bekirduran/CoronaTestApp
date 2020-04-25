//
//  PrecoutingVC.swift
//  Corona Test App
//
//  Created by Bekir Duran on 18.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import UIKit

class PrecoutingVC: UIViewController {
    var testbrain = TestBrain()
    
    @IBOutlet weak var preventLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        preventupdate()

    }
    func preventupdate() {
        preventLabel.text = testbrain.getPrevent()
        imageView.image = UIImage(named: testbrain.getPreventImage())
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        testbrain.nextprevent()
        preventupdate()
    }
    
   

}
