//
//  WorldSituationVC.swift
//  Corona Test App
//
//  Created by Bekir Duran on 17.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import UIKit
import WebKit

class WorldSituationVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        let url = URL(string: "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports")
        webView.load(URLRequest(url: url!))

    }
    
    @IBAction func gotobuttonPressed(_ sender: UIButton) {
       // dismiss(animated: true)
        navigationController?.popToRootViewController(animated: true)

    }
    
    

}
