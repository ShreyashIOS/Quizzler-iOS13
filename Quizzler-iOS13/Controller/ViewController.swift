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
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var thirdOption: UIButton!
    

    var quizeLogic = QuizeLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

   

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        if quizeLogic.checkAnswer(userAnswer!) {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizeLogic.nextQuestion()
       Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateUI(){
       
       trueButton.setTitle(quizeLogic.getQuestionOptionsText()[0], for: .normal)
       falseButton.setTitle(quizeLogic.getQuestionOptionsText()[1], for: .normal)
       thirdOption.setTitle(quizeLogic.getQuestionOptionsText()[2], for: .normal)
       
        
    trueButton.backgroundColor = UIColor.clear
    falseButton.backgroundColor = UIColor.clear
    thirdOption.backgroundColor = UIColor.clear
       score.text = "Score " + String(quizeLogic.userScore)
       questionLabel.text = quizeLogic.getQuestionText()
       //to show progress
       progressBar.progress = quizeLogic.getProgress()
    }
}

