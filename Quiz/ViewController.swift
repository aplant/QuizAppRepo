//
//  ViewController.swift
//  Quiz
//
//  Created by Andrew Plant on 1/19/17.
//  Copyright © 2017 Andrew Plant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!

    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["What is 7+7?", "What is the capital of Vermont?", "What is cognac made from?"]
    let answers: [String] = ["14", "Montpelier", "Grapes"]
    
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        if questionLabel.text=="???" {
            answerLabel.text = "MUST SELECT QUESTION FIRST"
        }
        else{
            let answer: String = answers[currentQuestionIndex]
            answerLabel.text = answer
        }
    }


}

