//
//  ViewController.swift
//  Quiz App
//
//  Created by Nolthicha Ngaongam on 10/8/2563 BE.
//  Copyright © 2563 Nolthicha Ngaongam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice4: UIButton!
    @IBOutlet weak var showCorrect: UILabel!
    
    let questionAll = QuestionInfo()
    var questionNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateQuestion()
    }
    
    @IBAction func choice1DidTap(_ sender: Any) {
        questionAll.checkAnswer(inputQuestionNumber: questionNumber, inputAnswer: 1)
        generateQuestion()
    }

    @IBAction func choice2DidTap(_ sender: Any) {
        questionAll.checkAnswer(inputQuestionNumber: questionNumber, inputAnswer: 2)
        generateQuestion()
    }

    @IBAction func choice3DidTap(_ sender: Any) {
        questionAll.checkAnswer(inputQuestionNumber: questionNumber, inputAnswer: 3)
        generateQuestion()
    }

    @IBAction func choice4DidTap(_ sender: Any) {
        questionAll.checkAnswer(inputQuestionNumber: questionNumber, inputAnswer: 4)
        generateQuestion()
    }
    
    func generateQuestion() {
        
        if questionNumber < questionAll.questionList.count  {
            questionLabel.text = questionAll.questionList[questionNumber].question
            choice1.setTitle(questionAll.questionList[questionNumber].choice1, for: .normal)
            choice2.setTitle(questionAll.questionList[questionNumber].choice2, for: .normal)
            choice3.setTitle(questionAll.questionList[questionNumber].choice3, for: .normal)
            choice4.setTitle(questionAll.questionList[questionNumber].choice4, for: .normal)
            
            questionNumber += 1
            showCorrect.text = "score : \(questionAll.correctCount)"
        } else {
            self.performSegue(withIdentifier: "result", sender: questionAll.correctCount)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "result" {
            let controller = segue.destination as! ResultViewController
            controller.score = sender as? Int
        }
     }
}

