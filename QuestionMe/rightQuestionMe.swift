//
//  rightQuestionMe.swift
//  QuestionMe
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct rightQuestionMe: View {
    
    @State private var response = " "
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("What is the fastest muscle in your body?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button("Arm") {
                    response = "Wrong("
                }
                .padding(.all, 15.0)
                .shadow(radius: 15)
                .background(.yellow)
                .foregroundColor(.white)
                .cornerRadius(15)
                
                Button("Heart") {
                    response = "You were close, but its wrong("
                }
                .padding(.all, 15.0)
                .shadow(radius: 15)
                .background(.brown)
                .foregroundColor(.white)
                .cornerRadius(15)
                
                Button("Eye") {
                    response = "Exactly right!"
                }
                .padding(.all, 15.0)
                .frame(width: nil)
                .shadow(radius: 15)
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(15)
                
                Text(response)
                
                NavigationLink(destination: rightQuestionMe())
                {
                    Text("next...")
                }
                .padding(.all, 15.0)
                .shadow(radius: 15)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
            }
            
        }
    }
}

#Preview {
    rightQuestionMe()
}
