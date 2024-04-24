//
//  ContentView.swift
//  QuizApp
//
//  Created by Joao Leal on 24/04/2024.
//

import SwiftUI



struct ContentView: View {
    @State private var question = QuestionViewModel()
    
    var body: some View {
        TabView{
            ForEach(question.questions, id: \.id) { pergunta in
                QuestionView(question: pergunta)
            }
        }.tabViewStyle(.page)
        
        
    }
}

#Preview {
    ContentView()
}
