//
//  HistoryView.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 01/03/21.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
            PageTittleView(title: "Pizza History")
            SelectedImageView(image: "1_250w")
                .padding(5)
            HistoryListView()
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
            HistoryView()
                .colorScheme(.dark)
                .background(Color.black)
        }
    }
}
