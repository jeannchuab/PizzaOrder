//
//  ContentView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 24/02/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel:OrderModel
    @State var isMenuDisplayed:Bool = true
    
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            
            Button(action: { self.isMenuDisplayed.toggle() }) {
                PageTittleView(title: "Order Pizza",
                               isDisplayingOrders: isMenuDisplayed)
            }
                        
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
                .animation(.spring())
            
//            Spacer()
        }
//        .animation(.spring())
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
//                .previewDevice("iPhone 12")
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
