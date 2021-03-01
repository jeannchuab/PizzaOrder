//
//  OrderListView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 24/02/21.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        VStack {
            ListHeaderView(text: "Your order")
            List(0..<5) { item in
                OrderRowView()
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
