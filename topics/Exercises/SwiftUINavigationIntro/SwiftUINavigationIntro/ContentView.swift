//
//  ContentView.swift
//  SwiftUINavigationIntro
//
//  Created by Abdullah Bilgin on 11/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // VStack to add 2 items
        VStack {
            Text("Items in Stock")
                .font(.title)
                .padding()
            Spacer()
            // button for navigate
            Button {
                print("Button tapped")
            } label: {
                Text("Shrimp Chips")
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
