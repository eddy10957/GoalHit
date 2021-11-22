//
//  Canvas_View.swift
//  Bullet_V1
//
//  Created by Marta Formisano on 19/11/21.
//

import Foundation
import SwiftUI

struct Canvas: View {
    
    let imageCardView = ["Rule Basic", "Green Template", "Daily Planner", "Grid Basic", "Pink Template", "Blue Template", "Weekly Planner"]
    
    let columns = [GridItem(.adaptive(minimum: 130))]
    
    @State var isClickedForModal : Bool = false
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(imageCardView, id: \.self){ value in
                        CanvasCard(imageCard: value, nameCard: value)
                            .foregroundColor(.black)
                    }
                }.padding()
            }
            .navigationTitle("Canvas")
            .navigationBarItems(leading:
                                    Button{
//                COSA FA EDIT?
            } label: {
                Text("Edit")
            }, trailing:
                                    Button{
                isClickedForModal.toggle()
            } label: {
                Image(systemName: "plus")
            })
        }
        .foregroundColor(.green)
        .sheet(isPresented: $isClickedForModal, content: {
            ModalEditCanvas(isClickedForModal: $isClickedForModal)
        })

    }
}

struct Canvas_Previews: PreviewProvider {
    static var previews: some View {
        Canvas()
    }
}
