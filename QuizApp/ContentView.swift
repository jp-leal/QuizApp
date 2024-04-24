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
                
                VStack{
                    Spacer()
                    QuestionView(question: pergunta)
                    Spacer()
                    if let lastQuestion = question.questions.last, lastQuestion.id == pergunta.id {
                        Button{
                            print(question.canSubmit())
                        } label: {
                            Text("Enviar")
                                .padding()
                                .foregroundStyle(.white)
                                .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color("AppColor"))
                                .frame(width: 300))
                        }
                    
                    }
                }}
        }.tabViewStyle(.page)
        
        
    }
}

#Preview {
    ContentView()
}
