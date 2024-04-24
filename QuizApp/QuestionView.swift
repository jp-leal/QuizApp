//
//  QuestionView.swift
//  QuizApp
//
//  Created by Joao Leal on 24/04/2024.
//

import SwiftUI

struct QuestionView: View {
    var question: Question
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text(question.title)
            
            ForEach(question.choices, id: \.self) { choices in
                    Text(choices)
                
            }
        }
        .padding(.horizontal, 20)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .frame(width: 320, height: 550, alignment: .leading )
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
            .shadow(radius: 10)
    }
}

#Preview {
    QuestionView(question: Question(title: "jjusdj", answer: "djisjids", choices: ["k", "k"]))
}
