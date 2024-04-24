//
//  Question.swift
//  QuizApp
//
//  Created by Joao Leal on 24/04/2024.
//

import Foundation

struct Question: Hashable {
    let id = UUID()
    let title: String
    let answer: String
    let choices: [String]
}
