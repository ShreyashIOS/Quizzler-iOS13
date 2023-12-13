//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    let quiz = [
    [ "Q1. 4 + 4 = 8", "True" ],
    ["Q2. 4 + 5 = 9", "True"],
    ["Q3. 3 + 5 = 2", "False"],
    ["Q4. 4 + 2 = 10", "False"],
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    var questionNumber = 0

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        if userAnswer == actualAnswer {
            print("Right")
        }else{
            print ("Wrong")
        }
        questionNumber += 1
        updateUI()
    }
    
    
    func updateUI(){
        if quiz.count > questionNumber{
            questionLabel.text = quiz[questionNumber][0]
        }
        else {
            questionNumber = 0
        }
    }
}

