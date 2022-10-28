//
//  ContentView.swift
//  CoHis
//
//  Created by Abdullah Bilgin on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 100)
            Text("I'm blue")
                .font(.title)
                .foregroundColor(.blue)

        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
