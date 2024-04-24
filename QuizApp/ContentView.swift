//
//  ContentView.swift
//  QuizApp
//
//  Created by Joao Leal on 24/04/2024.
//

import SwiftUI



struct ContentView: View {
    @State var question = QuestionViewModel()
    
    var body: some View {
        TabView{
            ForEach(question.questions, id: \.self) { pergunta in
                QuestionView(question: pergunta)
            }
        }.tabViewStyle(.page)
        
        
    }
}

#Preview {
    ContentView()
}
