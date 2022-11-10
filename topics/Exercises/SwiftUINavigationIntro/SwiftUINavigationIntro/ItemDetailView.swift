//
//  ItemDetailView.swift
//  SwiftUINavigationIntro
//
//  Created by Abdullah Bilgin on 11/9/22.
//

import SwiftUI

struct ItemDetailView: View {
    // Generate a random number representing items and store in @State
    @State var quantityRemaining = Int.random(in: 1...10)
    
    // to store stock
    let itemName: String
    
    var body: some View {
        VStack {
            Text("\(itemName)")
                .font(.title)
                .padding()
            Spacer()
            Image(systemName: "photo")
                .font(.system(size: 200))
                .padding()
            // set "quantityRemaining here
            Text("Quantity Remaining: \(quantityRemaining)")
            Spacer()
            // The button only decrements stock if an items is available
            Button(action: {
                if quantityRemaining > 0 {
                    quantityRemaining -= 1
                }
            }, label: {
                Text("Add one to your cart")
            })
            
        Spacer()
            // .background() runs the view below in the background
                .background(
                    // the navigation link is not active until the quantity is 0
                    NavigationLink(destination: Text("You bought all the \(itemName)!"),
                                   isActive: .constant(quantityRemaining == 0),
                                   label: {EmptyView()})
                
                )
            
            
            
            
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Test Item")
    }
}
