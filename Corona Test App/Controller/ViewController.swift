//
//  ViewController.swift
//  Corona Test App
//
//  Created by Bekir Duran on 17.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
       // navigationController?.hidesBarsOnTap=false
    }
    override func viewWillAppear(_ animated: Bool) {
      //  navigationController?.hidesBarsOnTap=true

    }


}

