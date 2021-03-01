//
//  ContentHeaderView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 24/02/21.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
//                    .scaledToFill()
                    .frame(minWidth: 300, idealWidth: 500, maxWidth: 600, minHeight: 75, idealHeight: 143, maxHeight: 150, alignment: .center)
                Text("Huli Pizza Company")
                    .offset(x: -20, y: 30) //Moves the text down
                    .font(Font.custom("Avinir-Black", size: 20)) //TOOD: Removing scalable fonts
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
//            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
