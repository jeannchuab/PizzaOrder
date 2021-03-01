//
//  RatingsView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 24/02/21.
//

import SwiftUI

struct RatingsView: View {
    var body: some View {
        HStack {
            ForEach(0..<5) { item in
                Image(systemName: "star.circle")
                    .font(.headline)
                    .foregroundColor(Color("G4"))
                
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}
