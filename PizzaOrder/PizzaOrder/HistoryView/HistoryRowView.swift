//
//  HistoryRowView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 01/03/21.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("1_100w")
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
            Text("Hulli Chicken")
                .font(.title)
            Spacer()
            
            //Another possibility to create the icon
//            Image(systemName: "chevron.right.square")
//                .font(.title)
//                .padding()
//                .foregroundColor(Color("G3"))
            
        }.overlay(
            Image(systemName: "chevron.right.square")
                .padding()
                .font(.title)
                .foregroundColor(Color("G3"))
            ,alignment: .trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
