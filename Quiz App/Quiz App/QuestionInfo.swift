//
//  QuestionInfo.swift
//  Quiz App
//
//  Created by Nolthicha Ngaongam on 10/8/2563 BE.
//  Copyright © 2563 Nolthicha Ngaongam. All rights reserved.
//

import Foundation

class QuestionInfo {
    var questionList = [Question]()
    var correctCount: Int
    var incorrectCount: Int
    
    init() {
        correctCount = 0
        incorrectCount = 0
        
        questionList.append(Question(question: "1 + 1 = ?", answer: 2, choice1: "1", choice2: "2", choice3: "3", choice4: "4"))
        questionList.append(Question(question: "2 + 2 = ?", answer: 4, choice1: "1", choice2: "2", choice3: "3", choice4: "4"))
        questionList.append(Question(question: "3 + 3 = ?", answer: 1, choice1: "6", choice2: "7", choice3: "8", choice4: "9"))
        questionList.append(Question(question: "4 + 4 = ?", answer: 3, choice1: "6", choice2: "7", choice3: "8", choice4: "9"))
    }
    
    func checkAnswer(inputQuestionNumber: Int, inputAnswer: Int) {
        let correctAnswer = questionList[inputQuestionNumber - 1].answer
        
        if inputAnswer == correctAnswer {
            correctCount += 1
        } else {
            incorrectCount += 1
        }
    }
    
}
