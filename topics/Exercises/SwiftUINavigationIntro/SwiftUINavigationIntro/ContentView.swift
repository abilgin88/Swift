//
//  ContentView.swift
//  SwiftUINavigationIntro
//
//  Created by Abdullah Bilgin on 11/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        // Navigation view acts a container for navigable views and content
        NavigationView {
            // VStack to add 2 items
            VStack {
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                
                // Adding the NavigationLink moves the user to the item screen
                // item name from "itemDetailView -> we pass from here
                NavigationLink(destination: ItemDetailView(itemName: "Shrimp Chips"),
                               label: {
                    Text("Shrimp Chips")
                })
                Spacer()
            }
            // Sets a navigation title of "Ligaya's Store
            .navigationTitle(Text("Ligaya's Store"))
            // Sets the styling of navigation title to inline
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
