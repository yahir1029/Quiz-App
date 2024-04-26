//
//  ContentView.swift
//  Quiz App
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("Image")
                    .resizable()
                    .frame(width:400,height: 400)
                VStack{
                    
                    
                    Spacer()
                    
                    NavigationLink(destination:SwiftUIView (),label:{
                        Text("Begin")
                            .frame(width:100 , height: 50)
                            .foregroundStyle(Color.blue)
                            .background(Color.green)
                            .font(.system(size:25))
                            .cornerRadius(10)
                            .padding(80)
                        
                        
                        
                        
                        
                        
                        
                    })
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
