//
//  QuestionStruct.swift
//  Quizzler-iOS13
//
//  Created by Shreyash Pattewar on 13/12/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuestionStruct{
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
