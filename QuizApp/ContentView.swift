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
            ForEach(question.questions.indices, id: \.self) { pergunta in
                
                VStack{
                    Spacer()
                    QuestionView(question: $question.questions[pergunta])
                    Spacer()
                    if let lastQuestion = question.questions.last, lastQuestion.id == question.questions[pergunta].id {
                        Button{
                            print(question.canSubmit())
                        } label: {
                            Text("Enviar")
                                .padding()
                                .foregroundStyle(.white)
                                .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color("AppColor"))
                                .frame(width: 300))
                        }.buttonStyle(.plain)
                        .disabled(!question.canSubmit())
                    
                    }
                }}
        }.tabViewStyle(.page(indexDisplayMode: .never))
        
        
    }
}

#Preview {
    ContentView()
}
