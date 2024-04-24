//
//  ContentView.swift
//  QuizApp
//
//  Created by Joao Leal on 24/04/2024.
//

import SwiftUI

struct Question: Hashable {
    let id = UUID()
    let title: String
    let answer: String
    let choices: [String]
}

struct ContentView: View {
    @State var question = QuestionViewModel()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            TabView{
                ForEach(question.questions, id: \.id) { choices in
                    Text(choices.title)
                }
            }.tabViewStyle(.page)
        }
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .frame(width: 300, height: 550 )
            
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
            .shadow(radius: 10)
        
    }
}

#Preview {
    ContentView()
}
