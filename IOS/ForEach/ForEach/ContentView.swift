//
//  ContentView.swift
//  ForEach
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    let mainColors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        
        VStack {
            ForEach(mainColors, id: \.self) { main in
                Text("Hello").foregroundColor(main)
            }
            Text("Finish")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
