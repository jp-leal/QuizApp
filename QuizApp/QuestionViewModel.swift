//
//  QuestionViewModel.swift
//  QuizApp
//
//  Created by Joao Leal on 24/04/2024.
//

import Foundation
import Observation

@Observable
class QuestionViewModel {
    var questions = [ Question(title: "1 + 1?", answer: "2", options: ["A", "B", "C", "D"]),
                      Question(title: "1 + 2?", answer: "3", options: ["A", "B", "C", "D"]),
                      Question(title: "1 + 3?", answer: "4", options: ["A", "B", "C", "D"]),
                      Question(title: "1 + 4?", answer: "5", options: ["A", "B", "C", "D"])

                      ]
    
    func canSubmit() -> Bool {
        return questions.filter({$0.selection == nil}).isEmpty
    }
    
    func gradeQuiz() -> String {
        var correct: CGFloat = 0
        for question in questions {
            if question.answer == question.selection {
                correct += 1
            }
        } 
        return "\((correct/CGFloat(questions.count)) * 100)%"
    }
                      }
