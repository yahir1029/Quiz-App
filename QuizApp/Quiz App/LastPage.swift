//
//  LastPage.swift
//  Quiz App
//
//  Created by StudentAM on 4/22/24.
//

import SwiftUI

struct LastPage: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("fifa")
                    .resizable()
                    .frame(width:1500, height: 1500)
                    .ignoresSafeArea()
                VStack{
            
                
                
                
                    NavigationLink(destination:ContentView (),label:{
                        Text("Play  Again")
                            .frame(width:200 , height: 60)
                            .foregroundStyle(Color.white)
                            .background(Color.blue)
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

    #Preview{
       LastPage()
}

