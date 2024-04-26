//
//  SwiftUIView.swift
//  Quiz App
//
//  Created by StudentAM on 4/15/24.
//

import SwiftUI

struct Question {
    var question: String
    var options:[String]
    var answer: String
}
struct SwiftUIView: View {
    @State private var content: String = ""
    @State private var score : Int = 0
    @State private var currentQuestion :Int = 0
    @State private var count : Int = 0
    @State var Title: String = ""
    
    @State private var questions : [Question] = [
        Question(question: "What was the first British club to appear in the European Cup?", options:[ "Hibernian","Leeds United", "Newcastle fc", "Fullham"],answer:"Hibernian"),
        
        Question(question: "Who Scored the first Goal of the 2022/23 Group Stage", options:["Ferran Jutgle","Mislav Orsic","Kylian Mbappe","Piotr Zienlinski"],answer:"Mislav Orsic"),
        
        Question(question: "In which year was the European Cup renamed to Champions League?",options:["1990","1991","1992","1994"],answer:"1992"),
        
        Question(question: "Which country won the UEFA European Football Championship in 2000 by beating Italy in the finals?",options:["England","Spain","France","Germany"],answer:"France"),
        
        Question(question: "Which country won the UEFA European Football Championship in 1992 by beating Germany in the finals?",options:["Sweeden","Italy","Ireland","Denmark"],answer:"Denmark"),
        
        Question(question: "Which country won the UEFA European Football Championship in 1988 by beating the Soviet Union in the finals?",options:["Germany","Netherlands","Denmark","Greece"],answer:"Netherlands"),
        
        Question(question: "Which country won the UEFA European Football Championship in 1984 by beating Spain in the finals?", options:["Italy","England","Portugal","France"],answer:"France"),
        
        Question(question: "Which country won the UEFA European Football Championship in 1980 by beating Belgium in the finals?", options:["West Germany","Italy","Sweden","Czech Republic"],answer:"West Germany"),
        
        Question(question: "What country hosted the 2004 UEFA European Football Championship?", options:["Portugal","Spain","Grece","Italy"],answer:"Portugal"),
        
        Question(question: "How many Champions League does Real Madrid Won", options:["11","16","9","14"],answer:"14"),
        
        Question(question: "How many Champions League does Barcelona Won", options:["4","10","5","7"],answer:"5"),
        
    ]
    var body: some View {
        NavigationView{
            ZStack{
                Image("me")
                    .resizable()
                    .frame(width:420, height: 885)
                    .ignoresSafeArea()
                VStack{
                    
                    Text("Score:\(score)")
                        .font(.title)
                        .bold()
                        .foregroundStyle(Color.white)
                    
                    Text("\(questions[currentQuestion].question)")
                        .padding()
                        .background(Color.orange)
                        .frame(width:300,height: 100)
                        .foregroundStyle(Color.white)
                        .bold()
                    
                    
                    
                    
                ForEach(questions[currentQuestion].options.indices,id: \.self){ index in
                    Button(action: {checkAnswer(optionPicked:questions[index].options[index])}, label: {
                        Text(questions[currentQuestion].options[index])
                            .foregroundColor(.white)
                            .frame(width:350 , height: 60)
                            .foregroundStyle(Color.white)
                            .bold()
                            .background(Color.blue)
                        })
                    }
                    
                    NavigationLink(destination:LastPage (),label:{
                          Text("Next page")
                            .frame(width: 150 , height: 50)
                            .background(Color.blue)
                            .padding()
                            .foregroundColor(.white)
                            .font(.title)
                            
                       })
                }
               
               
            
                    
                }
            }
        }
        func checkAnswer(optionPicked:String){
            if optionPicked == questions[currentQuestion].answer{
                score += 1
            }
            currentQuestion += 1
        }
    }

#Preview {
    SwiftUIView()
}
