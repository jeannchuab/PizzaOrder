//
//  ContentView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 24/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
                .layoutPriority(2)
            PageTittleView(title: "Order Pizza")
            MenuListView()
                .layoutPriority(1)
            OrderListView()
                .layoutPriority(1)
            
//            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
//                .previewDevice("iPhone 12")
            ContentView()
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
