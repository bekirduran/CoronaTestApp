//
//  TestBrain.swift
//  Corona Test App
//
//  Created by Bekir Duran on 17.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import UIKit

struct TestBrain {
    
    var questionNo = 0
    var score = 0
    var isOver = false
    
    let quiz = [
          
          Question(text: "Do you have any signs of high fever?", answers: ["Yes","Rarely","No"], image: "fever"),
          Question(text: "Do you feel tired?", answers: ["Yes","Rarely","No"], image: "tired"),
          Question(text: "Are you dry coughing?", answers: ["Yes","Rarely","No"], image: "cough"),
          Question(text: "Are you sneezing?", answers: ["Yes","Rarely","No"], image: "sneeze"),
          Question(text: "Do you have pain?", answers: ["Yes","Rarely","No"], image: "pain"),
          Question(text: "Is there a runny nose?", answers: ["Yes","Rarely","No"], image: "runnynose"),
          Question(text: "Do you have pain in your throat?", answers: ["Yes","Rarely","No"], image: "throatpain"),
          Question(text: "Do you have diarrhea problems?", answers: ["Yes","Rarely","No"], image: "diarrhea"),
          Question(text: "Do you have a headache?", answers: ["Yes","Rarely","No"], image: "headache"),
          Question(text: "Do you have shortness of breath?", answers: ["Yes","Rarely","No"], image: "breath")
          
     ]
  
    mutating func checkAnswer (_ userAnswer:String){
        
        if questionNo == 0 || questionNo == 2 {
            
            if userAnswer == "Yes" {
                score += 15
            }
            else if userAnswer == "Rarely"{
                score += 5
            }
    
        }
        else  {
        
        if userAnswer == "Yes" {
            score += 10
        }
        else if userAnswer == "Rarely"{
            score += 3
        }
        }
    }
    
    func getQuestion () -> String{
        return quiz[questionNo].text
    }
    
    func getImage()->String{
        return quiz[questionNo].image
    }
    
    
    
    mutating func nextques () {
        if questionNo < quiz.count - 1 {
            questionNo += 1
        }
        else {
            print("You got : \(score)")
            isOver = true
        }
    }
    
    
    func getScore()->Int{
        return score
    }
    
    
    func getSelection ()-> [String] {
        let select = quiz[questionNo].answer
        return select
    }
    
    
// MARK: - Prevent Part
    
    var preventNo = 0
    let prevent = [
           
           Question(text: "Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water", answers: ["Yes","Rarely","No"], image: "wash"),
           Question(text: "Use a napkin or tissue when coughing and sneezing, use the inside of your arm if you haven't napkin", answers: ["Yes","Rarely","No"], image: "sneezing"),
           Question(text: "Avoid touching eyes, nose and mouth", answers: ["Yes","Rarely","No"], image: "touch"),
           Question(text: "Avoid close contact (with 6 feet) with people who are sick", answers: ["Yes","Rarely","No"], image: "distance"),
           Question(text: "Postpone or cancel your travels abroad.", answers: ["Yes","Rarely","No"], image: "travel"),
           Question(text: "if you came from a trip abroad, stay home for 14 days", answers: ["Yes","Rarely","No"], image: "stay"),
           Question(text: "Ventilate your room frequently", answers: ["Yes","Rarely","No"], image: "vantilate"),
           Question(text: "Clean frequently used items such as door handle, TV remote control etc.", answers: ["Yes","Rarely","No"], image: "clean"),
           Question(text: "Do not share your personal belongings", answers: ["Yes","Rarely","No"], image: "share"),
           Question(text: "Wash your clothes at 60-90 C°", answers: ["Yes","Rarely","No"], image: "clothes"),
           Question(text: "Avoid close contact, such as handshaking and hugging.", answers: ["Yes","Rarely","No"], image: "donthug"),
           Question(text: "Eat plenty of fluids, eat healthy and sleep regularly", answers: ["Yes","Rarely","No"], image: "sleep"),
           Question(text: "If you have cold symptoms, do not contact anyone and wear a mask", answers: ["Yes","Rarely","No"], image: "mask"),
           Question(text: "Your condition gets worse call an ambulance or emergency services", answers: ["Yes","Rarely","No"], image: "call")
       ]
          
    func getPrevent () -> String{
        return prevent[preventNo].text
    }
    
    func getPreventImage()->String{
        return prevent[preventNo].image
    }

    mutating func nextprevent () {
        if preventNo < prevent.count - 1 {
            preventNo += 1
        }
        else {
            preventNo = 0
        }
    }
    
    
    // MARK: - Advice Part
    var advicemodal:AdviceModal?
    
    mutating func calculateScore(score:Int){
           
           
           if score < 35 {
            advicemodal = AdviceModal(advice: "You look well, Keep your health",color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) ,image: "low")
             
           }else if score < 50 {
             advicemodal = AdviceModal(advice: "You should take care of you, if you get worse call a doctor", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1) ,image: "medium")
              
           }else {
             advicemodal = AdviceModal(advice: "Your condition is critical, you should better see a doctor immediately ", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1) ,image: "high")
               
           }
       }
    
    func getAdviceImage()->String{
        
        return advicemodal?.image ?? ""
    }
    
    func getAdvice()->String{
        return advicemodal?.advice ?? "No Advice"
    }
    func getBgColor()->UIColor{
        return advicemodal?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    
    // MARK: - Persistance Information
    var persistanceNo = 0
       let persistance = [
         Question(text: "Wood : 4 Days", answers: ["Yes","Rarely","No"], image: "wood"),
         Question(text: "Glass : 4 Days", answers: ["Yes","Rarely","No"], image: "glass"),
         Question(text: "Paper : 4-5 Days", answers: ["Yes","Rarely","No"], image: "paper"),
         Question(text: "Plastic : 5 Days", answers: ["Yes","Rarely","No"], image: "plastic"),
         Question(text: "Alumminum : 2-8 Hours", answers: ["Yes","Rarely","No"], image: "alumminum"),
         Question(text: "Surgical Gloves : 8 Hours", answers: ["Yes","Rarely","No"], image: "gloves"),
         Question(text: "Steel : 48 Hours", answers: ["Yes","Rarely","No"], image: "steel")
]
    func getPersis () -> String{
           return persistance[persistanceNo].text
       }
       
       func getPersisImage()->String{
           return persistance[persistanceNo].image
       }

       mutating func nextPersis () {
           if persistanceNo < persistance.count - 1 {
               persistanceNo += 1
           }
           else {
            persistanceNo = 0
           }
       }
    mutating func backPersis () {
        if persistanceNo < persistance.count - 1 && persistanceNo != 0{
            persistanceNo -= 1
        }
        else {
         persistanceNo = persistance.count - 2
        }
    }
    
}
