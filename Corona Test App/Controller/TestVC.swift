//
//  TestVC.swift
//  Corona Test App
//
//  Created by Bekir Duran on 17.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import UIKit

class TestVC: UIViewController {
    var testbrain = TestBrain()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.sizeToFit()
        update()
    }
    
    
    func update(){
        labelText.text = testbrain.getQuestion()
        
        DispatchQueue.main.async {
            self.imageView.image = UIImage(named: self.testbrain.getImage())
        }
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "testToresult"{
            let vc = segue.destination as! TestResultVC
            vc.advice = testbrain.getAdvice()
            vc.bgColor = testbrain.getBgColor()
            vc.image = testbrain.getAdviceImage()
        }
    }
    
    
    
    @IBAction func ButtonAnswer(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        testbrain.checkAnswer(userAnswer)
        testbrain.nextques()
        update()
        
        if testbrain.isOver == true{
            print("Soru bitti")
            let s = testbrain.getScore()
            testbrain.calculateScore(score: s )
            performSegue(withIdentifier: "testToresult", sender: Any?.self)
        }
        
    }
    
}
