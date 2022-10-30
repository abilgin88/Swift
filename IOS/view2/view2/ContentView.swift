//
//  ContentView.swift
//  view2
//
//  Created by Abdullah Bilgin on 10/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            Image(systemName: "globe.europe.africa")
                .font(.system(size: 300))
                .foregroundColor(.brown)
            Text("Africa")
                .font(.system(size: 25))
                .foregroundColor(Color.brown)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
