//
//  MenuRowView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 24/02/21.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15){
            Image("background_pizza_01")
//                .cornerRadius(10) //Need to be before the shadow
//                .border(Color("G4"), width: 2)
                .clipShape(Capsule())
                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5) //We can use negative numbers here
            VStack(alignment: .leading) {
                Text("Hulli Chicken Pizza")
                    .font(.title)
                    .fontWeight(.light)
                RatingsView()
            }
//            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
//            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
