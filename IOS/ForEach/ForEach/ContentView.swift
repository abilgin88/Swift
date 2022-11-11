//
//  ContentView.swift
//  ForEach
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(0...2, id: \.self) {
                Text("Result: \($0)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
