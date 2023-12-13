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
        QuestionStruct(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
               QuestionStruct(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
               QuestionStruct(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
               QuestionStruct(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
               QuestionStruct(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
               QuestionStruct(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
               QuestionStruct(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
               QuestionStruct(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
               QuestionStruct(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
               QuestionStruct(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var questionNumber = 0
    var userScore = 0
    
    
   mutating func checkAnswer(_ userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].correctAnswer{
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
      func getQuestionOptionsText () -> [String] {
          return quiz[questionNumber].answer
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
