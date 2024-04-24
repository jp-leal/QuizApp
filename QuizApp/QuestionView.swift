//
//  QuestionView.swift
//  QuizApp
//
//  Created by Joao Leal on 24/04/2024.
//

import SwiftUI

struct QuestionView: View {
    @Binding var question: Question
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text(question.title)
            
            ForEach(question.options, id: \.self) { option in
                HStack{
                    Button{
                        question.selection = option
                    } label:
                    
                    {
                        if question.selection == option {
            Circle()
                                .shadow(radius: 3)
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color("AppColor"))
                        } else {
                            Circle()
                                .stroke()
                                .shadow(radius: 3)
                                .frame(width: 20, height: 20)
                                
                        }
                    }
                    Text(option)
                }.foregroundStyle(.secondary)
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
    QuestionView(question: Question(title: "jjusdj", answer: "djisjids", options: ["k", "b"]))
}
