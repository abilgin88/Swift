//
//  ContentView.swift
//  views
//
//  Created by Abdullah Bilgin on 10/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal:.center , vertical:.center )) {
            Color.cyan
                .ignoresSafeArea()
            HStack{
                VStack{
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                }
                VStack{
                    Color.white
                        .frame(width: 100, height: 100)
                    Color.white
                        .frame(width: 100, height: 100)
                    Color.white
                        .frame(width: 100, height: 100)
                    Color.white
                        .frame(width: 100, height: 100)
                    Color.white
                        .frame(width: 100, height: 100)
                    Color.white
                        .frame(width: 100, height: 100)
                }
                VStack{
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                    Color.brown
                        .frame(width: 100, height: 100)
                }
                
                
            }
            
           
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
