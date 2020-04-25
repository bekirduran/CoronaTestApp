//
//  Question.swift
//  Corona Test App
//
//  Created by Bekir Duran on 17.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import Foundation

struct Question {
    let text:String
    let answer:[String]
    let image:String
    
    init(text:String,answers:[String],image:String) {
        self.text = text
        self.answer = answers
       self.image = image
    }
    
}
