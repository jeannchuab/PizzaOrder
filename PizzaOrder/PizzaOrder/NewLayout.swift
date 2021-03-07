//
//  NewLayout.swift
//  PizzaOrder
//
//  Created by Jeann Luiz Chuab on 05/03/21.
//

import SwiftUI

struct NewLayout: View {
    
    @State var text = "valor 123"
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View {
        
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
                HStack {
                Image("ic_back") // set image here
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    Text("Go back")
                }
            }
    }

    var body: some View {
            List {
                Text("sample code")
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}
        


//       var body: some View {
//               List {
//                   Text("sample code")
//           }
//           .navigationBarBackButtonHidden(true)
//           .navigationBarItems(leading: btnBack)
//       }
    
//    var body: some View {
//
//        List {
//            Text("sample code")
//        }
//       .navigationBarBackButtonHidden(true)
//       .navigationBarItems(leading: btnBack)
        
//        Button(action: {
//                  self.presentationMode.wrappedValue.dismiss()
//               }) {
//                   Image(systemName: "gobackward").padding()
//                   Text("Back")
//               }
//               .navigationBarHidden(true)

        
//        NavigationView {
//            VStack(alignment: .center, spacing: 5, content: {
//
//            })
//
//            VStack {
//
//                Text("Preecher:")
//
//                TextField("text123", text: $text)
//
//                Text("Preecher:")
//
//                TextField("text123", text: $text)
//
//                Text("Preecher:")
//
//                TextField("text123", text: $text)
//            }
//
//            HStack{
//
//
//
//            }
//        }
                
//    }


struct NewLayout_Previews: PreviewProvider {
    static var previews: some View {
        NewLayout()
    }
}
