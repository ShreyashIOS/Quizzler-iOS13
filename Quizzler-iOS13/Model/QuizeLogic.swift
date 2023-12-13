//
//  QuizeLogic.swift
//  Quizzler-iOS13
//
//  Created by Shreyash Pattewar on 13/12/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizeLogic{
    
    let quiz = [
        QuestionStruct(q: "A slug's blood is green.", a: "True"),
              QuestionStruct(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
              QuestionStruct(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
              QuestionStruct(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
              QuestionStruct(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
              QuestionStruct(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
              QuestionStruct(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
              QuestionStruct(q: "Google was originally called 'Backrub'.", a: "True"),
              QuestionStruct(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
              QuestionStruct(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
              QuestionStruct(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
              QuestionStruct(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    var userScore = 0
    
    
   mutating func checkAnswer(_ userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            print("Right")
            userScore += 1
            return true
        }else{
            print ("Wrong") 
            return false
        }
        
    }
    func getQuestionText () -> String {
        return quiz[questionNumber].text
    }
    func getProgress ()-> Float{
        
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
   mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            userScore = 0
        }
    }
    
}
