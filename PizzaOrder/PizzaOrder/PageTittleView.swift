//
//  PageTittleView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 01/03/21.
//

import SwiftUI

struct PageTittleView: View {
    var title:String
    var isDisplayingOrders:Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: "chevron.up.square")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5))
                .font(.title)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .padding()
            ,alignment: .leading //try .triling to see what happens
        )
        .foregroundColor(Color("G1"))
        .background(Color("G4"))
    }
}

struct PageTittleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTittleView(title: "Order Pizza", isDisplayingOrders: true)
    }
}
