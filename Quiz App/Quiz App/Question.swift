//
//  Quiz.swift
//  Quiz App
//
//  Created by Nolthicha Ngaongam on 10/8/2563 BE.
//  Copyright © 2563 Nolthicha Ngaongam. All rights reserved.
//

import Foundation

class Question {
    let question: String
    let answer: Int
    let choice1: String
    let choice2: String
    let choice3: String
    let choice4: String
    
    init(question: String, answer: Int, choice1: String, choice2: String, choice3: String, choice4: String) {
        self.question = question
        self.answer = answer
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice3 = choice3
        self.choice4 = choice4
    }
}
