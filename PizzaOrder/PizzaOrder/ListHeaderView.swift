//
//  ListHeaderView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 01/03/21.
//

import SwiftUI

struct ListHeaderView: View {
    
    @ObservedObject var orderModel: OrderModel
    
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .padding(.leading, 5)
            //                    .padding([.leading, .top], 30)
                .foregroundColor(Color("G2"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .foregroundColor(Color("IP"))
        .font(.headline)
        .background(Color("G4"))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel(), text: "Menu")
    }
}
